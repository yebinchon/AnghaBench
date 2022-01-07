
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {size_t last_var; TYPE_4__* opcodes; } ;
typedef TYPE_3__ zend_op_array ;
struct TYPE_12__ {size_t var; } ;
struct TYPE_11__ {size_t var; } ;
struct TYPE_14__ {int opcode; int op1_type; int op2_type; TYPE_2__ op2; TYPE_1__ op1; } ;
typedef TYPE_4__ zend_op ;
typedef int (* zend_needs_live_range_cb ) (TYPE_3__*,TYPE_4__*) ;
typedef size_t uint32_t ;


 int IS_TMP_VAR ;
 int IS_VAR ;


 int ZEND_ASSERT (int ) ;



 int ZEND_CALL_VAR_NUM (int *,size_t) ;


 int ZEND_DO_FCALL ;







 int ZEND_FREE ;
 size_t ZEND_LIVE_LOOP ;
 size_t ZEND_LIVE_NEW ;
 size_t ZEND_LIVE_ROPE ;
 size_t ZEND_LIVE_SILENCE ;
 size_t ZEND_LIVE_TMPVAR ;



 int emit_live_range_raw (TYPE_3__*,size_t,size_t,size_t,size_t) ;

__attribute__((used)) static void emit_live_range(
  zend_op_array *op_array, uint32_t var_num, uint32_t start, uint32_t end,
  zend_needs_live_range_cb needs_live_range) {
 zend_op *def_opline = &op_array->opcodes[start], *orig_def_opline = def_opline;
 zend_op *use_opline = &op_array->opcodes[end];
 uint32_t kind;

 switch (def_opline->opcode) {

  case 153:
  case 152:
  case 129:
   ZEND_ASSERT(0);
   return;

  case 131:
  case 132:
  case 150:
  case 149:

  case 142:
  case 147:

  case 143:
   return;
  case 151:
   kind = ZEND_LIVE_SILENCE;
   start++;
   break;
  case 128:
   kind = ZEND_LIVE_ROPE;

   def_opline--;
   break;
  case 141:
  case 140:
   kind = ZEND_LIVE_LOOP;
   start++;
   break;





  case 130:
  {
   int level = 0;
   uint32_t orig_start = start;

   while (def_opline + 1 < use_opline) {
    def_opline++;
    start++;
    if (def_opline->opcode == ZEND_DO_FCALL) {
     if (level == 0) {
      break;
     }
     level--;
    } else {
     switch (def_opline->opcode) {
      case 138:
      case 137:
      case 135:
      case 139:
      case 133:
      case 136:
      case 134:
      case 130:
       level++;
       break;
      case 145:
      case 144:
      case 146:
       level--;
       break;
     }
    }
   }
   emit_live_range_raw(op_array, var_num, ZEND_LIVE_NEW, orig_start + 1, start + 1);
   if (start + 1 == end) {

    return;
   }

  default:
   start++;
   kind = ZEND_LIVE_TMPVAR;



   if (needs_live_range && !needs_live_range(op_array, orig_def_opline)) {
    return;
   }
   break;
  }
  case 148:
  {



   uint32_t rt_var_num =
    (uint32_t) (intptr_t) ZEND_CALL_VAR_NUM(((void*)0), op_array->last_var + var_num);
   zend_op *block_start_op = use_opline;

   if (needs_live_range && !needs_live_range(op_array, orig_def_opline)) {
    return;
   }

   while ((block_start_op-1)->opcode == ZEND_FREE) {
    block_start_op--;
   }

   kind = ZEND_LIVE_TMPVAR;
   start = block_start_op - op_array->opcodes;
   if (start != end) {
    emit_live_range_raw(op_array, var_num, kind, start, end);
   }

   do {
    use_opline--;
   } while (!(
    ((use_opline->op1_type & (IS_TMP_VAR|IS_VAR)) && use_opline->op1.var == rt_var_num) ||
    ((use_opline->op2_type & (IS_TMP_VAR|IS_VAR)) && use_opline->op2.var == rt_var_num)
   ));

   start = def_opline + 1 - op_array->opcodes;
   end = use_opline - op_array->opcodes;
   emit_live_range_raw(op_array, var_num, kind, start, end);
   return;
  }
 }

 emit_live_range_raw(op_array, var_num, kind, start, end);
}
