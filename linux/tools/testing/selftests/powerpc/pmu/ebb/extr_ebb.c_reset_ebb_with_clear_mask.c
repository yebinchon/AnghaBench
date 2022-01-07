
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 unsigned long BESCR_PME ;
 unsigned long BESCR_PMEO ;
 unsigned long MMCR0_PMAE ;
 int SPRN_BESCRR ;
 int SPRN_BESCRS ;
 int SPRN_MMCR0 ;
 unsigned long mfspr (int ) ;
 int mtspr (int ,unsigned long) ;

void reset_ebb_with_clear_mask(unsigned long mmcr0_clear_mask)
{
 u64 val;



 val = mfspr(SPRN_MMCR0);
 mtspr(SPRN_MMCR0, (val & ~mmcr0_clear_mask) | MMCR0_PMAE);


 mtspr(SPRN_BESCRR, BESCR_PMEO);


 mtspr(SPRN_BESCRS, BESCR_PME);


}
