
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GICH_LR_EOI ;
 int GICH_LR_HW ;
 int GICH_LR_STATE ;

__attribute__((used)) static bool lr_signals_eoi_mi(u32 lr_val)
{
 return !(lr_val & GICH_LR_STATE) && (lr_val & GICH_LR_EOI) &&
        !(lr_val & GICH_LR_HW);
}
