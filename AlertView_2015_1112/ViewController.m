//
//  ViewController.m
//  AlertView_2015_1112
//
//  Created by MBAChina-IOS on 15/11/18.
//  Copyright © 2015年 Gwh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, retain) UITextField* user;    // 用户名输入框
@property(nonatomic, retain) UITextField* pwd;    // 密码输入框
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen] bounds].size.width, 20)];
    [self.button setTitle:@"跳转" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:self.button];
    [self.button addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];
    
}
-(void)clickMe:(id)sender{
    
    //初始化提示框；
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"您确定是否解除锁定" preferredStyle: UIAlertControllerStyleAlert];
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"请输入用户名";
        //        UIView *myUserView = [[UIView alloc]initWithFrame:CGRectMake(22, 45, 240, 36)];
        //        myUserView.backgroundColor =  [UIColor redColor];
        //        self.user = [self createTextField:@"请输入用户名"
        //                                   withFrame:CGRectMake(22, 45, 240, 36)];
        //        [myUserView addSubview:self.user];
    }];
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"请输入密码";
        //        self.pwd = [self createTextField:@"请输入密码"
        //                                   withFrame:CGRectMake(22, 82, 240, 36)];
    }];
    [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //点击按钮的响应事件；
        NSLog(@"取消提示");
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"是的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //点击按钮的响应事件；
        NSLog(@"确定提示");
    }]];
    //弹出提示框；
    [self presentViewController:alert animated:true completion:nil];
    
}
//- (UITextField*)createTextField:(NSString*)placeholder withFrame:(CGRect)frame {
//    UITextField* field = [[UITextField alloc] initWithFrame:frame];
//    field.placeholder = placeholder;
//    field.secureTextEntry = YES;
//    //field.backgroundColor = [UIColor redColor];
//    field.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
//
//    return field;
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
