
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MMCR0_FC ;
 int MMCR0_PMAO ;
 int SPRN_MMCR0 ;
 int mfspr (int ) ;
 int printf (char*,int) ;

int ebb_check_mmcr0(void)
{
 u64 val;

 val = mfspr(SPRN_MMCR0);
 if ((val & (MMCR0_FC | MMCR0_PMAO)) == MMCR0_FC) {

  printf("Outside of loop, only FC set 0x%llx\n", val);
  return 1;
 }

 return 0;
}
