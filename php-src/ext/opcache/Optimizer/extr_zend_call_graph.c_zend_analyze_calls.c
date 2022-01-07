
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int zend_send_arg_info ;
typedef int zend_script ;
struct TYPE_19__ {int last; TYPE_4__* opcodes; } ;
typedef TYPE_3__ zend_op_array ;
struct TYPE_17__ {size_t num; } ;
struct TYPE_20__ {int opcode; int extended_value; TYPE_1__ op2; } ;
typedef TYPE_4__ zend_op ;
struct TYPE_21__ {int op_array; int type; } ;
typedef TYPE_5__ zend_function ;
struct TYPE_22__ {int flags; TYPE_7__* caller_info; TYPE_7__* callee_info; } ;
typedef TYPE_6__ zend_func_info ;
struct TYPE_23__ {int num_args; TYPE_2__* arg_info; TYPE_4__* caller_call_opline; struct TYPE_23__* next_caller; struct TYPE_23__* next_callee; TYPE_5__* callee_func; TYPE_4__* caller_init_opline; TYPE_3__* caller_op_array; } ;
typedef TYPE_7__ zend_call_info ;
typedef int zend_arena ;
typedef size_t uint32_t ;
struct TYPE_18__ {TYPE_4__* opline; } ;


 int ALLOCA_FLAG (int ) ;
 int SUCCESS ;
 size_t ZEND_CALL_TREE ;




 int ZEND_FUNC_HAS_CALLS ;
 TYPE_6__* ZEND_FUNC_INFO (int *) ;







 int ZEND_INTERNAL_FUNCTION ;
 TYPE_7__** do_alloca (int,int ) ;
 int free_alloca (TYPE_7__**,int ) ;
 int use_heap ;
 TYPE_7__* zend_arena_calloc (int **,int,int) ;
 TYPE_5__* zend_optimizer_get_called_func (int *,TYPE_3__*,TYPE_4__*) ;

int zend_analyze_calls(zend_arena **arena, zend_script *script, uint32_t build_flags, zend_op_array *op_array, zend_func_info *func_info)
{
 zend_op *opline = op_array->opcodes;
 zend_op *end = opline + op_array->last;
 zend_function *func;
 zend_call_info *call_info;
 int call = 0;
 zend_call_info **call_stack;
 ALLOCA_FLAG(use_heap);

 call_stack = do_alloca((op_array->last / 2) * sizeof(zend_call_info*), use_heap);
 call_info = ((void*)0);
 while (opline != end) {
  switch (opline->opcode) {
   case 145:
   case 143:
   case 141:
    call_stack[call] = call_info;
    func = zend_optimizer_get_called_func(
     script, op_array, opline);
    if (func) {
     call_info = zend_arena_calloc(arena, 1, sizeof(zend_call_info) + (sizeof(zend_send_arg_info) * ((int)opline->extended_value - 1)));
     call_info->caller_op_array = op_array;
     call_info->caller_init_opline = opline;
     call_info->caller_call_opline = ((void*)0);
     call_info->callee_func = func;
     call_info->num_args = opline->extended_value;
     call_info->next_callee = func_info->callee_info;
     func_info->callee_info = call_info;

     if (build_flags & ZEND_CALL_TREE) {
      call_info->next_caller = ((void*)0);
     } else if (func->type == ZEND_INTERNAL_FUNCTION) {
      call_info->next_caller = ((void*)0);
     } else {
      zend_func_info *callee_func_info = ZEND_FUNC_INFO(&func->op_array);
      if (callee_func_info) {
       call_info->next_caller = callee_func_info->caller_info;
       callee_func_info->caller_info = call_info;
      } else {
       call_info->next_caller = ((void*)0);
      }
     }
    } else {
     call_info = ((void*)0);
    }
    call++;
    break;
   case 144:
   case 142:
   case 146:
   case 139:
   case 140:
    call_stack[call] = call_info;
    call_info = ((void*)0);
    call++;
    break;
   case 150:
   case 148:
   case 147:
   case 149:
    func_info->flags |= ZEND_FUNC_HAS_CALLS;
    if (call_info) {
     call_info->caller_call_opline = opline;
    }
    call--;
    call_info = call_stack[call];
    break;
   case 133:
   case 131:
   case 132:
   case 130:
   case 137:
   case 136:
   case 129:
   case 128:
   case 134:
    if (call_info) {
     uint32_t num = opline->op2.num;

     if (num > 0) {
      num--;
     }
     call_info->arg_info[num].opline = opline;
    }
    break;
   case 138:
   case 135:

    if (call_info) {
     call_info->num_args = -1;
    }
    break;
  }
  opline++;
 }
 free_alloca(call_stack, use_heap);
 return SUCCESS;
}
