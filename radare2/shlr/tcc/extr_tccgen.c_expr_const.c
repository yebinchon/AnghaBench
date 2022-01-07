
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long long ll; } ;
struct TYPE_4__ {int r; TYPE_1__ c; } ;


 int VT_CONST ;
 int VT_LVAL ;
 int VT_SYM ;
 int VT_VALMASK ;
 int expect (char*) ;
 int expr_const1 () ;
 TYPE_2__* vtop ;

long long expr_const(void) {
 long long c = 0LL;
 expr_const1 ();
 if ((vtop->r & (VT_VALMASK | VT_LVAL | VT_SYM)) != VT_CONST) {
  expect ("constant expression");
 }
 c = vtop->c.ll;
 return c;
}
