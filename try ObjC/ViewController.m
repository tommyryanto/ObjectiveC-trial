//
//  ViewController.m
//  try ObjC
//
//  Created by Tommy Ryanto on 23/6/18.
//  Copyright © 2018 Tommy Ryanto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.judul = @[@"Cell1", @"Cell2"];
}

- (void) viewWillAppear:(BOOL)animated{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.judul count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = _judul[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Pressed");
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Alert" message:@"You just pressed the cell" preferredStyle: UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler: ^(UIAlertAction* action) {
        [self performSegueWithIdentifier:@"moveTo2" sender:self];
    }]];
    [self presentViewController:alert animated: YES completion:nil];
}


@end
