
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SYSC_REG_RSTCTRL ;
 int rt_sysc_r32 (int ) ;
 int rt_sysc_w32 (int ,int ) ;
 int usleep_range (int,int) ;

void fe_reset(u32 reset_bits)
{
 u32 t;

 t = rt_sysc_r32(SYSC_REG_RSTCTRL);
 t |= reset_bits;
 rt_sysc_w32(t, SYSC_REG_RSTCTRL);
 usleep_range(10, 20);

 t &= ~reset_bits;
 rt_sysc_w32(t, SYSC_REG_RSTCTRL);
 usleep_range(10, 20);
}
