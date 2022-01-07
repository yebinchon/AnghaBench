
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* ops; TYPE_1__* vars; } ;
typedef TYPE_2__ zend_ssa ;
struct TYPE_7__ {int result_use; int res_use_chain; int op1_use; int op1_use_chain; int op2_use; int op2_use_chain; } ;
struct TYPE_5__ {int use_chain; } ;


 int ZEND_ASSERT (int ) ;
 void* zend_ssa_next_use (TYPE_4__*,int,int) ;

int zend_ssa_unlink_use_chain(zend_ssa *ssa, int op, int var)
{
 if (ssa->vars[var].use_chain == op) {
  ssa->vars[var].use_chain = zend_ssa_next_use(ssa->ops, var, op);
  return 1;
 } else {
  int use = ssa->vars[var].use_chain;

  while (use >= 0) {
   if (ssa->ops[use].result_use == var) {
    if (ssa->ops[use].res_use_chain == op) {
     ssa->ops[use].res_use_chain = zend_ssa_next_use(ssa->ops, var, op);
     return 1;
    } else {
     use = ssa->ops[use].res_use_chain;
    }
   } else if (ssa->ops[use].op1_use == var) {
    if (ssa->ops[use].op1_use_chain == op) {
     ssa->ops[use].op1_use_chain = zend_ssa_next_use(ssa->ops, var, op);
     return 1;
    } else {
     use = ssa->ops[use].op1_use_chain;
    }
   } else if (ssa->ops[use].op2_use == var) {
    if (ssa->ops[use].op2_use_chain == op) {
     ssa->ops[use].op2_use_chain = zend_ssa_next_use(ssa->ops, var, op);
     return 1;
    } else {
     use = ssa->ops[use].op2_use_chain;
    }
   } else {
    break;
   }
  }

  ZEND_ASSERT(0);
  return 0;
 }
}
