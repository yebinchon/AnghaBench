
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int t; } ;
struct TYPE_6__ {scalar_t__ do_bounds_check; } ;
struct TYPE_5__ {int r; TYPE_3__ type; } ;


 int VT_ARRAY ;
 int VT_BTYPE ;
 int VT_FUNC ;
 int VT_MUSTBOUND ;
 int VT_PTR ;
 int VT_VLA ;
 int expect (char*) ;
 int lvalue_type (int) ;
 TYPE_3__* pointed_type (TYPE_3__*) ;
 TYPE_2__* tcc_state ;
 TYPE_1__* vtop ;

void indir(void) {
 if ((vtop->type.t & VT_BTYPE) != VT_PTR) {
  if ((vtop->type.t & VT_BTYPE) == VT_FUNC) {
   return;
  }
  expect ("pointer");
 }
 vtop->type = *pointed_type (&vtop->type);

 if (!(vtop->type.t & VT_ARRAY) && !(vtop->type.t & VT_VLA)
     && (vtop->type.t & VT_BTYPE) != VT_FUNC) {
  vtop->r |= lvalue_type (vtop->type.t);






 }
}
