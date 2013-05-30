#import "QTwoLineLabel.h"

@implementation QTwoLineLabel

- (UITableViewCell *)getCellForTableView:(QuickDialogTableView *)tableView controller:(QuickDialogController *)controller
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QTwoLineLabel"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"QTwoLineLabel"];
    }
    
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = _title;
    cell.detailTextLabel.text = [_value description];
    cell.imageView.image = _image;
    cell.accessoryType = self.accessoryType != UITableViewCellAccessoryNone ? self.accessoryType : self.controllerAccessoryAction != nil ? UITableViewCellAccessoryDetailDisclosureButton : ( self.sections!= nil || self.controllerAction!=nil ? UITableViewCellAccessoryDisclosureIndicator : UITableViewCellAccessoryNone);
    cell.selectionStyle = self.sections!= nil || self.controllerAction!=nil || self.onSelected!=nil ? UITableViewCellSelectionStyleBlue: UITableViewCellSelectionStyleNone;
    
    return cell;
}

@end
