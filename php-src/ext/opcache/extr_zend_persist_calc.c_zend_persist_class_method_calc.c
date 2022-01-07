
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_8__ {scalar_t__ type; int fn_flags; } ;
typedef TYPE_1__ zend_op_array ;
typedef int zend_internal_function ;


 int ADD_ARENA_SIZE (int) ;
 int ADD_SIZE_EX (int) ;
 int ZCG (int ) ;
 int ZEND_ACC_ARENA_ALLOCATED ;
 int ZEND_ASSERT (int) ;
 scalar_t__ ZEND_INTERNAL_FUNCTION ;
 scalar_t__ ZEND_USER_FUNCTION ;
 TYPE_1__* Z_PTR_P (int *) ;
 int is_immutable_class ;
 int zend_persist_op_array_calc_ex (TYPE_1__*) ;
 TYPE_1__* zend_shared_alloc_get_xlat_entry (TYPE_1__*) ;
 int zend_shared_alloc_register_xlat_entry (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void zend_persist_class_method_calc(zval *zv)
{
 zend_op_array *op_array = Z_PTR_P(zv);
 zend_op_array *old_op_array;

 if (op_array->type != ZEND_USER_FUNCTION) {
  ZEND_ASSERT(op_array->type == ZEND_INTERNAL_FUNCTION);
  if (op_array->fn_flags & ZEND_ACC_ARENA_ALLOCATED) {
   old_op_array = zend_shared_alloc_get_xlat_entry(op_array);
   if (!old_op_array) {
    ADD_SIZE_EX(sizeof(zend_internal_function));
    zend_shared_alloc_register_xlat_entry(op_array, Z_PTR_P(zv));
   }
  }
  return;
 }

 old_op_array = zend_shared_alloc_get_xlat_entry(op_array);
 if (!old_op_array) {
  ADD_SIZE_EX(sizeof(zend_op_array));
  zend_persist_op_array_calc_ex(Z_PTR_P(zv));
  zend_shared_alloc_register_xlat_entry(op_array, Z_PTR_P(zv));
  if (!ZCG(is_immutable_class)) {
   ADD_ARENA_SIZE(sizeof(void*));
  }
 }
}
