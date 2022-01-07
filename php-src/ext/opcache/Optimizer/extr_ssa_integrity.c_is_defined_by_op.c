
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op1_def; int op2_def; int result_def; } ;
typedef TYPE_1__ zend_ssa_op ;
struct TYPE_5__ {TYPE_1__* ops; } ;
typedef TYPE_2__ zend_ssa ;
typedef int zend_bool ;



__attribute__((used)) static inline zend_bool is_defined_by_op(zend_ssa *ssa, int op, int check) {
 zend_ssa_op *ssa_op = &ssa->ops[op];
 return (ssa_op->op1_def == check)
  || (ssa_op->op2_def == check)
  || (ssa_op->result_def == check);
}
