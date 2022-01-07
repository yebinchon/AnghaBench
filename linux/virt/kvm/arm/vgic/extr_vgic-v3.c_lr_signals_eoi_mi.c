
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ICH_LR_EOI ;
 int ICH_LR_HW ;
 int ICH_LR_STATE ;

__attribute__((used)) static bool lr_signals_eoi_mi(u64 lr_val)
{
 return !(lr_val & ICH_LR_STATE) && (lr_val & ICH_LR_EOI) &&
        !(lr_val & ICH_LR_HW);
}
