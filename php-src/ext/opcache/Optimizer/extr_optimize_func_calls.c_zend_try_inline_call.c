
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int zval ;
typedef int zend_op_array ;
struct TYPE_16__ {int constant; } ;
struct TYPE_14__ {size_t extended_value; scalar_t__ opcode; scalar_t__ op1_type; TYPE_7__ op2; TYPE_7__ op1; } ;
typedef TYPE_1__ zend_op ;
struct TYPE_13__ {int fn_flags; size_t required_num_args; size_t num_args; TYPE_1__* opcodes; int * arg_info; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_10__ op_array; } ;
typedef TYPE_2__ zend_function ;
typedef size_t uint32_t ;


 int CRT_CONSTANT_EX (TYPE_10__*,TYPE_1__*,TYPE_7__) ;
 scalar_t__ IS_CONST ;
 scalar_t__ IS_CONSTANT_AST ;
 scalar_t__ IS_UNUSED ;
 int MAKE_NOP (TYPE_1__*) ;
 scalar_t__ RETURN_VALUE_USED (TYPE_1__*) ;
 int SET_UNUSED (TYPE_7__) ;
 int ZEND_ACC_ABSTRACT ;
 int ZEND_ACC_HAS_TYPE_HINTS ;
 int ZEND_ACC_TRAIT_CLONE ;
 int ZEND_ACC_VARIADIC ;
 scalar_t__ ZEND_ARG_SEND_MODE (int *) ;
 scalar_t__ ZEND_INIT_METHOD_CALL ;
 scalar_t__ ZEND_QM_ASSIGN ;
 scalar_t__ ZEND_RETURN ;
 scalar_t__ ZEND_USER_FUNCTION ;
 int ZVAL_COPY (int *,int ) ;
 scalar_t__ Z_TYPE_P (int ) ;
 int zend_delete_call_instructions (TYPE_1__*) ;
 int zend_optimizer_add_literal (int *,int *) ;

__attribute__((used)) static void zend_try_inline_call(zend_op_array *op_array, zend_op *fcall, zend_op *opline, zend_function *func)
{
 if (func->type == ZEND_USER_FUNCTION
  && !(func->op_array.fn_flags & (ZEND_ACC_ABSTRACT|ZEND_ACC_HAS_TYPE_HINTS))

  && !(func->op_array.fn_flags & (ZEND_ACC_TRAIT_CLONE))
  && fcall->extended_value >= func->op_array.required_num_args
  && func->op_array.opcodes[func->op_array.num_args].opcode == ZEND_RETURN) {

  zend_op *ret_opline = func->op_array.opcodes + func->op_array.num_args;

  if (ret_opline->op1_type == IS_CONST) {
   uint32_t i, num_args = func->op_array.num_args;
   num_args += (func->op_array.fn_flags & ZEND_ACC_VARIADIC) != 0;

   if (fcall->opcode == ZEND_INIT_METHOD_CALL && fcall->op1_type == IS_UNUSED) {



    return;
   }

   for (i = 0; i < num_args; i++) {


    if (ZEND_ARG_SEND_MODE(&func->op_array.arg_info[i])) {
     return;
    }
   }

   if (fcall->extended_value < func->op_array.num_args) {

    i = fcall->extended_value;

    do {
     if (Z_TYPE_P(CRT_CONSTANT_EX(&func->op_array, &func->op_array.opcodes[i], func->op_array.opcodes[i].op2)) == IS_CONSTANT_AST) {
      return;
     }
     i++;
    } while (i < func->op_array.num_args);
   }

   if (RETURN_VALUE_USED(opline)) {
    zval zv;

    ZVAL_COPY(&zv, CRT_CONSTANT_EX(&func->op_array, ret_opline, ret_opline->op1));
    opline->opcode = ZEND_QM_ASSIGN;
    opline->op1_type = IS_CONST;
    opline->op1.constant = zend_optimizer_add_literal(op_array, &zv);
    SET_UNUSED(opline->op2);
   } else {
    MAKE_NOP(opline);
   }

   zend_delete_call_instructions(opline-1);
  }
 }
}
