
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* script; } ;
typedef TYPE_3__ zend_optimizer_ctx ;
struct TYPE_12__ {int last; TYPE_5__* opcodes; } ;
typedef TYPE_4__ zend_op_array ;
struct TYPE_10__ {int num; } ;
struct TYPE_13__ {scalar_t__ opcode; int extended_value; TYPE_2__ op1; int op2; } ;
typedef TYPE_5__ zend_op ;
typedef int zend_function ;
struct TYPE_9__ {int function_table; } ;


 int RT_CONSTANT (TYPE_5__*,int ) ;
 scalar_t__ ZEND_INIT_FCALL ;
 int Z_STR_P (int ) ;
 int * zend_hash_find_ptr (int *,int ) ;
 int zend_vm_calc_used_stack (int ,int *) ;

__attribute__((used)) static void zend_adjust_fcall_stack_size(zend_op_array *op_array, zend_optimizer_ctx *ctx)
{
 zend_function *func;
 zend_op *opline, *end;

 opline = op_array->opcodes;
 end = opline + op_array->last;
 while (opline < end) {
  if (opline->opcode == ZEND_INIT_FCALL) {
   func = zend_hash_find_ptr(
    &ctx->script->function_table,
    Z_STR_P(RT_CONSTANT(opline, opline->op2)));
   if (func) {
    opline->op1.num = zend_vm_calc_used_stack(opline->extended_value, func);
   }
  }
  opline++;
 }
}
