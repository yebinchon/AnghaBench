
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 scalar_t__ C_DDR_STAT_REG ;

__attribute__((used)) static void ddr_poll_until_not_busy(void)
{
 volatile UINT reg_tmp = 0;
 volatile UINT busy = 1;


 reg_tmp = *(volatile UINT *) C_DDR_STAT_REG;



 while (busy == 1) {
  reg_tmp = *(volatile UINT *) C_DDR_STAT_REG;


  if ((reg_tmp & 0x80000000) == 0x00000000) {
   busy = 0;
  }
 }
}
