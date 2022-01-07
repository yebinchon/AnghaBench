
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int BTOneVacInfo ;


 int BTVacInfo ;
 int MaxBackends ;
 int add_size (int ,int ) ;
 int mul_size (int ,int) ;
 int offsetof (int ,int ) ;
 int vacuums ;

Size
BTreeShmemSize(void)
{
 Size size;

 size = offsetof(BTVacInfo, vacuums);
 size = add_size(size, mul_size(MaxBackends, sizeof(BTOneVacInfo)));
 return size;
}
