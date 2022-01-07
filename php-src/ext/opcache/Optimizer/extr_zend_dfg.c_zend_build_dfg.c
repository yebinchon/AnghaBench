
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int fn_flags; TYPE_5__* opcodes; } ;
typedef TYPE_4__ zend_op_array ;
struct TYPE_12__ {int var; } ;
struct TYPE_14__ {int var; } ;
struct TYPE_13__ {int var; } ;
struct TYPE_16__ {scalar_t__ opcode; int op1_type; int op2_type; int extended_value; int result_type; TYPE_1__ result; TYPE_3__ op2; TYPE_2__ op1; } ;
typedef TYPE_5__ zend_op ;
struct TYPE_17__ {int size; int out; int in; int use; int def; int tmp; } ;
typedef TYPE_6__ zend_dfg ;
struct TYPE_18__ {int blocks_count; int* predecessors; TYPE_8__* blocks; } ;
typedef TYPE_7__ zend_cfg ;
typedef int zend_bitset ;
struct TYPE_19__ {int flags; int start; int len; int successors_count; int* successors; size_t predecessor_offset; int predecessors_count; } ;
typedef TYPE_8__ zend_basic_block ;
typedef int uint32_t ;


 int ALLOCA_FLAG (int ) ;
 int DFG_BITSET (int ,int,int) ;
 int DFG_ISSET (int ,int,int,int) ;
 int DFG_SET (int ,int,int,int) ;
 int EX_VAR_TO_NUM (int ) ;
 int IS_CV ;
 int IS_TMP_VAR ;
 int IS_VAR ;
 int SUCCESS ;
 int ZEND_ACC_RETURN_REFERENCE ;

 int ZEND_ARRAY_ELEMENT_REF ;
 int ZEND_ASSIGN_STATIC_PROP_REF ;
 int ZEND_BB_REACHABLE ;


 int ZEND_BIND_REF ;

 int ZEND_BITSET_ALLOCA (int,int ) ;
 int ZEND_BITSET_ELM_SIZE ;
 scalar_t__ ZEND_OP_DATA ;
 int ZEND_SSA_RC_INFERENCE ;
 int ZEND_SSA_USE_CV_RESULTS ;





 int free_alloca (int ,int ) ;
 int memset (int ,int ,int) ;
 int use_heap ;
 int zend_bitset_clear (int ,int) ;
 int zend_bitset_copy (int ,int ,int) ;
 int zend_bitset_empty (int ,int) ;
 int zend_bitset_equal (int ,int ,int) ;
 int zend_bitset_excl (int ,int) ;
 int zend_bitset_incl (int ,int) ;
 int zend_bitset_last (int ,int) ;
 int zend_bitset_len (int) ;
 int zend_bitset_union (int ,int ,int) ;
 int zend_bitset_union_with_difference (int ,int ,int ,int ,int) ;

int zend_build_dfg(const zend_op_array *op_array, const zend_cfg *cfg, zend_dfg *dfg, uint32_t build_flags)
{
 int set_size;
 zend_basic_block *blocks = cfg->blocks;
 int blocks_count = cfg->blocks_count;
 zend_bitset tmp, def, use, in, out;
 int k;
 uint32_t var_num;
 int j;

 set_size = dfg->size;
 tmp = dfg->tmp;
 def = dfg->def;
 use = dfg->use;
 in = dfg->in;
 out = dfg->out;


 for (j = 0; j < blocks_count; j++) {
  zend_op *opline, *end;
  if ((blocks[j].flags & ZEND_BB_REACHABLE) == 0) {
   continue;
  }

  opline = op_array->opcodes + blocks[j].start;
  end = opline + blocks[j].len;
  for (; opline < end; opline++) {
   if (opline->opcode != ZEND_OP_DATA) {
    zend_op *next = opline + 1;
    if (next < end && next->opcode == ZEND_OP_DATA) {
     if (next->op1_type & (IS_CV|IS_VAR|IS_TMP_VAR)) {
      var_num = EX_VAR_TO_NUM(next->op1.var);
      if (next->op1_type == IS_CV && (opline->opcode == 167
        || opline->opcode == ZEND_ASSIGN_STATIC_PROP_REF)) {
       DFG_SET(use, set_size, j, var_num);
       DFG_SET(def, set_size, j, var_num);
      } else {
       if (!DFG_ISSET(def, set_size, j, var_num)) {
        DFG_SET(use, set_size, j, var_num);
       }
      }
     }
     if (next->op2_type & (IS_CV|IS_VAR|IS_TMP_VAR)) {
      var_num = EX_VAR_TO_NUM(next->op2.var);
      if (!DFG_ISSET(def, set_size, j, var_num)) {
       DFG_SET(use, set_size, j, var_num);
      }
     }
    }
    if (opline->op1_type == IS_CV) {
     var_num = EX_VAR_TO_NUM(opline->op1.var);
     switch (opline->opcode) {
     case 173:
     case 149:
      if ((build_flags & ZEND_SSA_RC_INFERENCE)
        || (opline->extended_value & ZEND_ARRAY_ELEMENT_REF)) {
       goto op1_def;
      }
      goto op1_use;
     case 151:
     case 136:
     case 160:
     case 139:
     case 148:
     case 159:
      if (build_flags & ZEND_SSA_RC_INFERENCE) {
       goto op1_def;
      }
      goto op1_use;
     case 128:
      if ((build_flags & ZEND_SSA_RC_INFERENCE)
        || (op_array->fn_flags & ZEND_ACC_RETURN_REFERENCE)) {
       goto op1_def;
      }
      goto op1_use;
     case 132:
     case 172:
     case 165:
     case 167:
     case 163:
     case 161:
     case 135:
     case 138:
     case 137:
     case 134:
     case 133:
     case 150:
     case 166:
     case 170:
     case 168:
     case 164:
     case 141:
     case 143:
     case 145:
     case 147:
     case 171:
     case 169:
     case 131:
     case 130:
     case 155:
     case 157:
     case 158:
     case 156:
     case 154:
     case 129:
     case 140:
     case 142:
     case 144:
     case 146:
op1_def:


      DFG_SET(use, set_size, j, var_num);
      DFG_SET(def, set_size, j, var_num);
      break;
     default:
op1_use:
      if (!DFG_ISSET(def, set_size, j, var_num)) {
       DFG_SET(use, set_size, j, var_num);
      }
     }
    } else if (opline->op1_type & (IS_VAR|IS_TMP_VAR)) {
     var_num = EX_VAR_TO_NUM(opline->op1.var);
     if (!DFG_ISSET(def, set_size, j, var_num)) {
      DFG_SET(use, set_size, j, var_num);
     }
     if (opline->opcode == 129) {
      DFG_SET(def, set_size, j, var_num);
     }
    }
    if (opline->op2_type == IS_CV) {
     var_num = EX_VAR_TO_NUM(opline->op2.var);
     switch (opline->opcode) {
      case 172:
       if (build_flags & ZEND_SSA_RC_INFERENCE) {
        goto op2_def;
       }
       goto op2_use;
      case 162:
       if ((build_flags & ZEND_SSA_RC_INFERENCE) || (opline->extended_value & ZEND_BIND_REF)) {
        goto op2_def;
       }
       goto op2_use;
      case 165:
      case 153:
      case 152:
op2_def:

       DFG_SET(use, set_size, j, var_num);
       DFG_SET(def, set_size, j, var_num);
       break;
      default:
op2_use:
       if (!DFG_ISSET(def, set_size, j, var_num)) {
        DFG_SET(use, set_size, j, var_num);
       }
       break;
     }
    } else if (opline->op2_type & (IS_VAR|IS_TMP_VAR)) {
     var_num = EX_VAR_TO_NUM(opline->op2.var);
     if (opline->opcode == 153 || opline->opcode == 152) {
      DFG_SET(def, set_size, j, var_num);
     } else {
      if (!DFG_ISSET(def, set_size, j, var_num)) {
       DFG_SET(use, set_size, j, var_num);
      }
     }
    }
    if (opline->result_type & (IS_CV|IS_VAR|IS_TMP_VAR)) {
     var_num = EX_VAR_TO_NUM(opline->result.var);
     if ((build_flags & ZEND_SSA_USE_CV_RESULTS)
      && opline->result_type == IS_CV) {
      DFG_SET(use, set_size, j, var_num);
     }
     DFG_SET(def, set_size, j, var_num);
    }
   }
  }
 }


 {
  uint32_t worklist_len = zend_bitset_len(blocks_count);
  zend_bitset worklist;
  ALLOCA_FLAG(use_heap);
  worklist = ZEND_BITSET_ALLOCA(worklist_len, use_heap);
  memset(worklist, 0, worklist_len * ZEND_BITSET_ELM_SIZE);
  for (j = 0; j < blocks_count; j++) {
   zend_bitset_incl(worklist, j);
  }
  while (!zend_bitset_empty(worklist, worklist_len)) {


   j = zend_bitset_last(worklist, worklist_len);
   zend_bitset_excl(worklist, j);

   if ((blocks[j].flags & ZEND_BB_REACHABLE) == 0) {
    continue;
   }
   if (blocks[j].successors_count != 0) {
    zend_bitset_copy(DFG_BITSET(out, set_size, j), DFG_BITSET(in, set_size, blocks[j].successors[0]), set_size);
    for (k = 1; k < blocks[j].successors_count; k++) {
     zend_bitset_union(DFG_BITSET(out, set_size, j), DFG_BITSET(in, set_size, blocks[j].successors[k]), set_size);
    }
   } else {
    zend_bitset_clear(DFG_BITSET(out, set_size, j), set_size);
   }
   zend_bitset_union_with_difference(tmp, DFG_BITSET(use, set_size, j), DFG_BITSET(out, set_size, j), DFG_BITSET(def, set_size, j), set_size);
   if (!zend_bitset_equal(DFG_BITSET(in, set_size, j), tmp, set_size)) {
    zend_bitset_copy(DFG_BITSET(in, set_size, j), tmp, set_size);


    {
     int *predecessors = &cfg->predecessors[blocks[j].predecessor_offset];
     for (k = 0; k < blocks[j].predecessors_count; k++) {
      zend_bitset_incl(worklist, predecessors[k]);
     }
    }
   }
  }

  free_alloca(worklist, use_heap);
 }

 return SUCCESS;
}
