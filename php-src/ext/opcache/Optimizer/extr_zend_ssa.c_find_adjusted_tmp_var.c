
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
struct TYPE_10__ {TYPE_3__* opcodes; } ;
typedef TYPE_2__ zend_op_array ;
struct TYPE_12__ {int var; } ;
struct TYPE_9__ {scalar_t__ var; } ;
struct TYPE_11__ {scalar_t__ result_type; scalar_t__ opcode; scalar_t__ op1_type; scalar_t__ op2_type; TYPE_8__ op1; TYPE_8__ op2; TYPE_1__ result; } ;
typedef TYPE_3__ zend_op ;
typedef int zend_long ;
typedef scalar_t__ uint32_t ;


 int * CRT_CONSTANT_EX (TYPE_2__ const*,TYPE_3__*,TYPE_8__) ;
 int EX_VAR_TO_NUM (int ) ;
 scalar_t__ IS_CONST ;
 scalar_t__ IS_CV ;
 scalar_t__ IS_LONG ;
 scalar_t__ IS_TMP_VAR ;
 scalar_t__ ZEND_ADD ;
 int ZEND_LONG_MIN ;
 scalar_t__ ZEND_POST_DEC ;
 scalar_t__ ZEND_POST_INC ;
 scalar_t__ ZEND_SUB ;
 int Z_LVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;

__attribute__((used)) static int find_adjusted_tmp_var(const zend_op_array *op_array, uint32_t build_flags, zend_op *opline, uint32_t var_num, zend_long *adjustment)
{
 zend_op *op = opline;
 zval *zv;

 while (op != op_array->opcodes) {
  op--;
  if (op->result_type != IS_TMP_VAR || op->result.var != var_num) {
   continue;
  }

  if (op->opcode == ZEND_POST_DEC) {
   if (op->op1_type == IS_CV) {
    *adjustment = -1;
    return EX_VAR_TO_NUM(op->op1.var);
   }
  } else if (op->opcode == ZEND_POST_INC) {
   if (op->op1_type == IS_CV) {
    *adjustment = 1;
    return EX_VAR_TO_NUM(op->op1.var);
   }
  } else if (op->opcode == ZEND_ADD) {
   if (op->op1_type == IS_CV && op->op2_type == IS_CONST) {
    zv = CRT_CONSTANT_EX(op_array, op, op->op2);
    if (Z_TYPE_P(zv) == IS_LONG
     && Z_LVAL_P(zv) != ZEND_LONG_MIN) {
     *adjustment = -Z_LVAL_P(zv);
     return EX_VAR_TO_NUM(op->op1.var);
    }
   } else if (op->op2_type == IS_CV && op->op1_type == IS_CONST) {
    zv = CRT_CONSTANT_EX(op_array, op, op->op1);
    if (Z_TYPE_P(zv) == IS_LONG
     && Z_LVAL_P(zv) != ZEND_LONG_MIN) {
     *adjustment = -Z_LVAL_P(zv);
     return EX_VAR_TO_NUM(op->op2.var);
    }
   }
  } else if (op->opcode == ZEND_SUB) {
   if (op->op1_type == IS_CV && op->op2_type == IS_CONST) {
    zv = CRT_CONSTANT_EX(op_array, op, op->op2);
    if (Z_TYPE_P(zv) == IS_LONG) {
     *adjustment = Z_LVAL_P(zv);
     return EX_VAR_TO_NUM(op->op1.var);
    }
   }
  }
  break;
 }
 return -1;
}
