//
//  SuperController.m
//  TabBar_Demo
//
//  Created by zhengju on 16/11/8.
//  Copyright © 2016年 zhengju. All rights reserved.
//

#import "SuperController.h"

@interface SuperController ()

@end

@implementation SuperController

- (void)viewDidLoad {
    [super viewDidLoad];
    //返回按钮
    [self.backBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.rightBtn addTarget:self action:@selector(rightAction) forControlEvents:UIControlEventTouchUpInside];
    
}
- (UIButton *)backBtn{
    if (_backBtn == nil) {
        _backBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        
        [_backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_backBtn setImage:[UIImage imageNamed:@"返回"]  forState:UIControlStateNormal];
        _backBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        _backBtn.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:15];
        UIBarButtonItem *leftBackBarBtn = [[UIBarButtonItem alloc] initWithCustomView:_backBtn];
        self.navigationItem.leftBarButtonItem = leftBackBarBtn;
    }
    return _backBtn;
}
- (UIButton *)rightBtn{
    if (_rightBtn == nil) {
        _rightBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        
        [_rightBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _rightBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        _rightBtn.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:15];
        UIBarButtonItem *rightBarBtn = [[UIBarButtonItem alloc] initWithCustomView:_rightBtn];
        self.navigationItem.rightBarButtonItem = rightBarBtn;
    }
    return _rightBtn;
}
#pragma mark - backAction返回
- (void)backAction
{
    if (self.navigationController.presentedViewController || self.navigationController.presentingViewController) {
        [self.navigationController dismissViewControllerAnimated:YES completion:nil];

    }else{
      
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
