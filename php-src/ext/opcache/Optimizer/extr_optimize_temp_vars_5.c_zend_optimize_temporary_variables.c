
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_12__ {int arena; } ;
typedef TYPE_4__ zend_optimizer_ctx ;
struct TYPE_13__ {int T; int last_var; int last; int fn_flags; TYPE_6__* opcodes; } ;
typedef TYPE_5__ zend_op_array ;
struct TYPE_9__ {void* var; } ;
struct TYPE_11__ {void* var; } ;
struct TYPE_10__ {void* var; } ;
struct TYPE_14__ {int result_type; int op1_type; scalar_t__ opcode; int extended_value; int op2_type; TYPE_1__ result; TYPE_3__ op2; TYPE_2__ op1; } ;
typedef TYPE_6__ zend_op ;
typedef scalar_t__ zend_bitset ;
typedef int uint32_t ;


 int GET_AVAILABLE_T () ;
 int IS_TMP_VAR ;
 int IS_VAR ;
 int MAX (int,int) ;
 void* NUM_VAR (int) ;
 int VAR_NUM (void*) ;
 int ZEND_ACC_HAS_FINALLY_BLOCK ;
 int ZEND_BITSET_ELM_SIZE ;
 scalar_t__ ZEND_DISCARD_EXCEPTION ;
 scalar_t__ ZEND_FAST_CALL ;
 scalar_t__ ZEND_FE_FREE ;
 scalar_t__ ZEND_FREE ;
 scalar_t__ ZEND_GENERATOR_RETURN ;
 scalar_t__ ZEND_RETURN ;
 scalar_t__ ZEND_RETURN_BY_REF ;
 scalar_t__ ZEND_ROPE_END ;
 scalar_t__ ZEND_ROPE_INIT ;
 scalar_t__ ZEND_VERIFY_RETURN_TYPE ;
 scalar_t__ zend_arena_alloc (int *,int) ;
 void* zend_arena_checkpoint (int ) ;
 int zend_arena_release (int *,void*) ;
 int zend_bitset_clear (scalar_t__,int) ;
 int zend_bitset_excl (scalar_t__,int) ;
 scalar_t__ zend_bitset_in (scalar_t__,int) ;
 int zend_bitset_incl (scalar_t__,int) ;
 int zend_bitset_len (int) ;

void zend_optimize_temporary_variables(zend_op_array *op_array, zend_optimizer_ctx *ctx)
{
 int T = op_array->T;
 int offset = op_array->last_var;
 uint32_t bitset_len;
 zend_bitset taken_T;
 zend_op **start_of_T;
 zend_bitset valid_T;
 int *map_T;
 zend_op *opline, *end;
 int currT;
 int i;
 int max = -1;
 void *checkpoint = zend_arena_checkpoint(ctx->arena);

 bitset_len = zend_bitset_len(T);
 taken_T = (zend_bitset) zend_arena_alloc(&ctx->arena, bitset_len * ZEND_BITSET_ELM_SIZE);
 start_of_T = (zend_op **) zend_arena_alloc(&ctx->arena, T * sizeof(zend_op *));
 valid_T = (zend_bitset) zend_arena_alloc(&ctx->arena, bitset_len * ZEND_BITSET_ELM_SIZE);
 map_T = (int *) zend_arena_alloc(&ctx->arena, T * sizeof(int));

    end = op_array->opcodes;
    opline = &op_array->opcodes[op_array->last - 1];


    while (opline >= end) {
        if (opline->result_type & (IS_VAR | IS_TMP_VAR)) {
   start_of_T[VAR_NUM(opline->result.var) - offset] = opline;
  }
  opline--;
 }

 zend_bitset_clear(valid_T, bitset_len);
 zend_bitset_clear(taken_T, bitset_len);

    end = op_array->opcodes;
    opline = &op_array->opcodes[op_array->last - 1];

    while (opline >= end) {
  if ((opline->op1_type & (IS_VAR | IS_TMP_VAR))) {
   currT = VAR_NUM(opline->op1.var) - offset;
   if (opline->opcode == ZEND_ROPE_END) {
    int num = (((opline->extended_value + 1) * sizeof(zend_string*)) + (sizeof(zval) - 1)) / sizeof(zval);
    int var;

    var = max;
    while (var >= 0 && !zend_bitset_in(taken_T, var)) {
     var--;
    }
    max = MAX(max, var + num);
    var = var + 1;
    map_T[currT] = var;
    zend_bitset_incl(valid_T, currT);
    zend_bitset_incl(taken_T, var);
    opline->op1.var = NUM_VAR(var + offset);
    while (num > 1) {
     num--;
     zend_bitset_incl(taken_T, var + num);
    }
   } else {
    if (!zend_bitset_in(valid_T, currT)) {
     int use_new_var = 0;





     if ((op_array->fn_flags & ZEND_ACC_HAS_FINALLY_BLOCK) &&
         (opline->opcode == ZEND_RETURN ||
          opline->opcode == ZEND_GENERATOR_RETURN ||
          opline->opcode == ZEND_RETURN_BY_REF ||
          opline->opcode == ZEND_FREE ||
          opline->opcode == ZEND_FE_FREE)) {
      zend_op *curr = opline;

      while (--curr >= end) {
       if (curr->opcode == ZEND_FAST_CALL) {
        use_new_var = 1;
        break;
       } else if (curr->opcode != ZEND_FREE &&
                  curr->opcode != ZEND_FE_FREE &&
                  curr->opcode != ZEND_VERIFY_RETURN_TYPE &&
                  curr->opcode != ZEND_DISCARD_EXCEPTION) {
        break;
       }
      }
     }
     if (use_new_var) {
      i = ++max;
      zend_bitset_incl(taken_T, i);
     } else {
      GET_AVAILABLE_T();
     }
     map_T[currT] = i;
     zend_bitset_incl(valid_T, currT);
    }
    opline->op1.var = NUM_VAR(map_T[currT] + offset);
   }
  }

  if ((opline->op2_type & (IS_VAR | IS_TMP_VAR))) {
   currT = VAR_NUM(opline->op2.var) - offset;
   if (!zend_bitset_in(valid_T, currT)) {
    GET_AVAILABLE_T();
    map_T[currT] = i;
    zend_bitset_incl(valid_T, currT);
   }
   opline->op2.var = NUM_VAR(map_T[currT] + offset);
  }

  if (opline->result_type & (IS_VAR | IS_TMP_VAR)) {
   currT = VAR_NUM(opline->result.var) - offset;
   if (zend_bitset_in(valid_T, currT)) {
    if (start_of_T[currT] == opline) {



     if (opline->opcode != ZEND_FAST_CALL) {
      zend_bitset_excl(taken_T, map_T[currT]);
     }
    }
    opline->result.var = NUM_VAR(map_T[currT] + offset);
    if (opline->opcode == ZEND_ROPE_INIT) {
     if (start_of_T[currT] == opline) {
      uint32_t num = ((opline->extended_value * sizeof(zend_string*)) + (sizeof(zval) - 1)) / sizeof(zval);
      while (num > 1) {
       num--;
       zend_bitset_excl(taken_T, map_T[currT]+num);
      }
     }
    }
   } else {

    GET_AVAILABLE_T();
    map_T[currT] = i;
    zend_bitset_incl(valid_T, currT);
    opline->result.var = NUM_VAR(i + offset);
   }
  }

  opline--;
 }

 zend_arena_release(&ctx->arena, checkpoint);
 op_array->T = max + 1;
}
