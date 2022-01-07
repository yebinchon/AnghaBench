
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int fn_flags; int last; int last_literal; int * literals; TYPE_2__* opcodes; } ;
typedef TYPE_1__ zend_op_array ;
struct TYPE_7__ {int op1_type; int op2_type; int result_type; int op2; int op1; } ;
typedef TYPE_2__ zend_op ;


 int IS_CONST ;
 int IS_CV ;
 int IS_TMP_VAR ;
 int IS_VAR ;
 int ZEND_ACC_DONE_PASS_TWO ;
 int ZEND_ASSERT (int) ;
 int ZEND_PASS_TWO_UNDO_CONSTANT (TYPE_1__*,TYPE_2__*,int ) ;
 int * emalloc (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void zend_revert_pass_two(zend_op_array *op_array)
{
 zend_op *opline, *end;

 ZEND_ASSERT((op_array->fn_flags & ZEND_ACC_DONE_PASS_TWO) != 0);

 opline = op_array->opcodes;
 end = opline + op_array->last;
 while (opline < end) {
  if (opline->op1_type == IS_CONST) {
   ZEND_PASS_TWO_UNDO_CONSTANT(op_array, opline, opline->op1);
  }
  if (opline->op2_type == IS_CONST) {
   ZEND_PASS_TWO_UNDO_CONSTANT(op_array, opline, opline->op2);
  }

  opline->result_type &= (IS_TMP_VAR|IS_VAR|IS_CV|IS_CONST);
  opline++;
 }

 if (op_array->literals) {
  zval *literals = emalloc(sizeof(zval) * op_array->last_literal);
  memcpy(literals, op_array->literals, sizeof(zval) * op_array->last_literal);
  op_array->literals = literals;
 }


 op_array->fn_flags &= ~ZEND_ACC_DONE_PASS_TWO;
}
