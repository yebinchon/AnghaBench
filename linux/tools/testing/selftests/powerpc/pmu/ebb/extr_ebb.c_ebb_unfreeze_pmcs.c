
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMCR0_FC ;
 int SPRN_MMCR0 ;
 int mb () ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;

void ebb_unfreeze_pmcs(void)
{

 mtspr(SPRN_MMCR0, mfspr(SPRN_MMCR0) & ~MMCR0_FC);
 mb();
}
