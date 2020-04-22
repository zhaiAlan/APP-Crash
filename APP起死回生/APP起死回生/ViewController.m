//
//  ViewController.m
//  APP起死回生
//
//  Created by Alan on 4/22/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic)NSArray *dataArr;
@property (nonatomic, strong) NSMutableDictionary *dic;

@end

@implementation ViewController

- (NSMutableDictionary *)dic
{
    if (!_dic) {
        _dic = [NSMutableDictionary dictionary];
    }
    return _dic;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    button.backgroundColor = [UIColor magentaColor];
    [button setTitle:@"闪退" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    self.dataArr = @[@1,@2,@3];
    // Do any additional setup after loading the view.
}
- (void)click{
    //数组越界，已经根据error处理
    NSLog(@"%@",self.dataArr[3]);
    //字典中Object 放入nil 会导致崩溃，使用RunTime处理
    [self.dic setObject:nil forKey:@"nil"];
}


@end
