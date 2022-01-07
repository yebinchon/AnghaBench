
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_writel (int ,unsigned int) ;
 unsigned int fe_base ;

void fe_w32(u32 val, unsigned reg)
{
 __raw_writel(val, fe_base + reg);
}
