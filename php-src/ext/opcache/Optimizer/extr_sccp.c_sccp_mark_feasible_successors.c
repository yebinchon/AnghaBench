
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zval ;
typedef int zend_ssa_op ;
struct TYPE_14__ {int* map; } ;
struct TYPE_15__ {TYPE_2__ cfg; } ;
typedef TYPE_3__ zend_ssa ;
typedef int zend_op_array ;
struct TYPE_13__ {int constant; } ;
struct TYPE_16__ {int opcode; int extended_value; TYPE_1__ op2; } ;
typedef TYPE_4__ zend_op ;
struct TYPE_17__ {int* successors; int successors_count; } ;
typedef TYPE_5__ zend_basic_block ;
struct TYPE_18__ {TYPE_3__* ssa; int * op_array; } ;
typedef TYPE_6__ scdf_ctx ;
typedef int sccp_ctx ;
typedef int HashTable ;


 int CT_CONSTANT_EX (int *,int ) ;
 int FAILURE ;
 int IS_ARRAY ;
 scalar_t__ IS_BOT (int *) ;
 int IS_FALSE ;
 int IS_LONG ;
 int IS_NULL ;
 int IS_PARTIAL_ARRAY (int *) ;
 int IS_STRING ;
 scalar_t__ IS_TOP (int *) ;
 int IS_TRUE ;
 size_t ZEND_OFFSET_TO_OPLINE_NUM (int *,TYPE_4__*,int ) ;


 int * Z_ARRVAL_P (int ) ;
 int Z_ARR_P (int *) ;
 int Z_LVAL_P (int *) ;
 int Z_STR_P (int *) ;
 int Z_TYPE (int ) ;
 int Z_TYPE_P (int *) ;
 int ct_eval_bool_cast (int *,int *) ;
 int * get_op1_value (int *,TYPE_4__*,int *) ;
 int scdf_mark_edge_feasible (TYPE_6__*,int,int) ;
 int * zend_hash_find (int *,int ) ;
 int * zend_hash_index_find (int *,int ) ;
 int zend_hash_num_elements (int ) ;

__attribute__((used)) static void sccp_mark_feasible_successors(
  scdf_ctx *scdf,
  int block_num, zend_basic_block *block,
  zend_op *opline, zend_ssa_op *ssa_op) {
 sccp_ctx *ctx = (sccp_ctx *) scdf;
 zval *op1, zv;
 int s;


 switch (opline->opcode) {
  case 142:
  case 141:
  case 139:
  case 138:
   scdf_mark_edge_feasible(scdf, block_num, block->successors[0]);
   scdf_mark_edge_feasible(scdf, block_num, block->successors[1]);
   return;
 }

 op1 = get_op1_value(ctx, opline, ssa_op);


 if (!op1 || IS_BOT(op1)) {
  for (s = 0; s < block->successors_count; s++) {
   scdf_mark_edge_feasible(scdf, block_num, block->successors[s]);
  }
  return;
 }


 if (IS_TOP(op1)) {
  return;
 }

 switch (opline->opcode) {
  case 133:
  case 132:
  case 131:
  {
   if (ct_eval_bool_cast(&zv, op1) == FAILURE) {
    scdf_mark_edge_feasible(scdf, block_num, block->successors[0]);
    scdf_mark_edge_feasible(scdf, block_num, block->successors[1]);
    return;
   }
   s = Z_TYPE(zv) == IS_TRUE;
   break;
  }
  case 135:
  case 134:
  case 130:
  {
   if (ct_eval_bool_cast(&zv, op1) == FAILURE) {
    scdf_mark_edge_feasible(scdf, block_num, block->successors[0]);
    scdf_mark_edge_feasible(scdf, block_num, block->successors[1]);
    return;
   }
   s = Z_TYPE(zv) == IS_FALSE;
   break;
  }
  case 140:
   s = (Z_TYPE_P(op1) == IS_NULL);
   break;
  case 137:
  case 136:


   if (Z_TYPE_P(op1) != IS_ARRAY ||
     (IS_PARTIAL_ARRAY(op1) && zend_hash_num_elements(Z_ARR_P(op1)) == 0)) {
    scdf_mark_edge_feasible(scdf, block_num, block->successors[0]);
    scdf_mark_edge_feasible(scdf, block_num, block->successors[1]);
    return;
   }
   s = zend_hash_num_elements(Z_ARR_P(op1)) != 0;
   break;
  case 129:
   if (Z_TYPE_P(op1) == IS_LONG) {
    zend_op_array *op_array = scdf->op_array;
    zend_ssa *ssa = scdf->ssa;
    HashTable *jmptable = Z_ARRVAL_P(CT_CONSTANT_EX(op_array, opline->op2.constant));
    zval *jmp_zv = zend_hash_index_find(jmptable, Z_LVAL_P(op1));
    int target;

    if (jmp_zv) {
     target = ssa->cfg.map[ZEND_OFFSET_TO_OPLINE_NUM(op_array, opline, Z_LVAL_P(jmp_zv))];
    } else {
     target = ssa->cfg.map[ZEND_OFFSET_TO_OPLINE_NUM(op_array, opline, opline->extended_value)];
    }
    scdf_mark_edge_feasible(scdf, block_num, target);
    return;
   }
   s = 0;
   break;
  case 128:
   if (Z_TYPE_P(op1) == IS_STRING) {
    zend_op_array *op_array = scdf->op_array;
    zend_ssa *ssa = scdf->ssa;
    HashTable *jmptable = Z_ARRVAL_P(CT_CONSTANT_EX(op_array, opline->op2.constant));
    zval *jmp_zv = zend_hash_find(jmptable, Z_STR_P(op1));
    int target;

    if (jmp_zv) {
     target = ssa->cfg.map[ZEND_OFFSET_TO_OPLINE_NUM(op_array, opline, Z_LVAL_P(jmp_zv))];
    } else {
     target = ssa->cfg.map[ZEND_OFFSET_TO_OPLINE_NUM(op_array, opline, opline->extended_value)];
    }
    scdf_mark_edge_feasible(scdf, block_num, target);
    return;
   }
   s = 0;
   break;
  default:
   for (s = 0; s < block->successors_count; s++) {
    scdf_mark_edge_feasible(scdf, block_num, block->successors[s]);
   }
   return;
 }
 scdf_mark_edge_feasible(scdf, block_num, block->successors[s]);
}
