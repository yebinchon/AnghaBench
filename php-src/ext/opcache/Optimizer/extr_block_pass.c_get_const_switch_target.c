
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
typedef int zend_op_array ;
struct TYPE_9__ {scalar_t__ opcode; } ;
typedef TYPE_1__ zend_op ;
struct TYPE_10__ {int* map; } ;
typedef TYPE_2__ zend_cfg ;
struct TYPE_11__ {int* successors; int successors_count; } ;
typedef TYPE_3__ zend_basic_block ;
typedef int HashTable ;


 scalar_t__ IS_LONG ;
 scalar_t__ IS_STRING ;
 int ZEND_ASSERT (int) ;
 size_t ZEND_OFFSET_TO_OPLINE_NUM (int *,TYPE_1__*,int ) ;
 int ZEND_OP2_LITERAL (TYPE_1__*) ;
 scalar_t__ ZEND_SWITCH_LONG ;
 scalar_t__ ZEND_SWITCH_STRING ;
 int * Z_ARRVAL (int ) ;
 int Z_LVAL_P (int *) ;
 int Z_STR_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int * zend_hash_find (int *,int ) ;
 int * zend_hash_index_find (int *,int ) ;

__attribute__((used)) static int get_const_switch_target(zend_cfg *cfg, zend_op_array *op_array, zend_basic_block *block, zend_op *opline, zval *val) {
 HashTable *jumptable = Z_ARRVAL(ZEND_OP2_LITERAL(opline));
 zval *zv;
 if ((opline->opcode == ZEND_SWITCH_LONG && Z_TYPE_P(val) != IS_LONG)
   || (opline->opcode == ZEND_SWITCH_STRING && Z_TYPE_P(val) != IS_STRING)) {

  return block->successors[block->successors_count - 1];
 }
 if (Z_TYPE_P(val) == IS_LONG) {
  zv = zend_hash_index_find(jumptable, Z_LVAL_P(val));
 } else {
  ZEND_ASSERT(Z_TYPE_P(val) == IS_STRING);
  zv = zend_hash_find(jumptable, Z_STR_P(val));
 }
 if (!zv) {

  return block->successors[block->successors_count - 2];
 }
 return cfg->map[ZEND_OFFSET_TO_OPLINE_NUM(op_array, opline, Z_LVAL_P(zv))];
}
