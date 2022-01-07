
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int r; } ;


 int VT_LLOCAL ;
 int VT_LOCAL ;
 int VT_LVAL ;
 int VT_LVAL_TYPE ;
 int VT_VALMASK ;
 TYPE_1__* vtop ;

__attribute__((used)) static void gaddrof(void) {
 vtop->r &= ~VT_LVAL;

 if ((vtop->r & VT_VALMASK) == VT_LLOCAL) {
  vtop->r = (vtop->r & ~(VT_VALMASK | VT_LVAL_TYPE)) | VT_LOCAL | VT_LVAL;
 }
}
