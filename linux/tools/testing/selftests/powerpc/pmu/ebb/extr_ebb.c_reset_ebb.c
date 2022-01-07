
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMCR0_FC ;
 int MMCR0_PMAO ;
 int reset_ebb_with_clear_mask (int) ;

void reset_ebb(void)
{
 reset_ebb_with_clear_mask(MMCR0_PMAO | MMCR0_FC);
}
