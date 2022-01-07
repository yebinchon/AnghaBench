
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_op_array ;
struct TYPE_6__ {int num; } ;
struct TYPE_7__ {scalar_t__ opcode; int extended_value; TYPE_1__ op1; } ;
typedef TYPE_2__ zend_op ;
struct TYPE_8__ {TYPE_4__* callee_info; } ;
typedef TYPE_3__ zend_func_info ;
struct TYPE_9__ {struct TYPE_9__* next_callee; scalar_t__ callee_func; TYPE_2__* caller_init_opline; } ;
typedef TYPE_4__ zend_call_info ;


 TYPE_3__* ZEND_FUNC_INFO (int *) ;
 scalar_t__ ZEND_INIT_FCALL ;
 int zend_vm_calc_used_stack (int ,scalar_t__) ;

__attribute__((used)) static void zend_adjust_fcall_stack_size_graph(zend_op_array *op_array)
{
 zend_func_info *func_info = ZEND_FUNC_INFO(op_array);

 if (func_info) {
  zend_call_info *call_info =func_info->callee_info;

  while (call_info) {
   zend_op *opline = call_info->caller_init_opline;

   if (opline && call_info->callee_func && opline->opcode == ZEND_INIT_FCALL) {
    opline->op1.num = zend_vm_calc_used_stack(opline->extended_value, call_info->callee_func);
   }
   call_info = call_info->next_callee;
  }
 }
}
