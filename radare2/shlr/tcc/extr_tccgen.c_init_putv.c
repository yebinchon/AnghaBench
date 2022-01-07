
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int r; } ;
struct TYPE_5__ {int t; } ;
typedef TYPE_1__ CType ;





 int TCC_ERR (char*) ;
 int VT_CONST ;
 int VT_CONSTANT ;
 int VT_LOCAL ;
 int VT_LVAL ;
 int VT_VALMASK ;
 int expr_const1 () ;
 int expr_eq () ;
 int global_expr ;
 int vpushll (long long) ;
 int vset (TYPE_1__*,int,unsigned long) ;
 int vswap () ;
 TYPE_2__* vtop ;

__attribute__((used)) static void init_putv(CType *type, unsigned long c, long long v, int expr_type) {
 int saved_global_expr;
 CType dtype;

 switch (expr_type) {
 case 128:
  vpushll (v);
  break;
 case 129:

  saved_global_expr = global_expr;
  global_expr = 1;
  expr_const1 ();
  global_expr = saved_global_expr;

  if ((vtop->r & (VT_VALMASK | VT_LVAL)) != VT_CONST) {
   TCC_ERR ("initializer element is not constant");
  }
  break;
 case 130:
  expr_eq ();
  break;
 }

 dtype = *type;
 dtype.t &= ~VT_CONSTANT;

 vset (&dtype, VT_LOCAL | VT_LVAL, c);
 vswap ();
}
