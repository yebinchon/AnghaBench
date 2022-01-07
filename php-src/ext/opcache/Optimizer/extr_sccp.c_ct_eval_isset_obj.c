
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int uint32_t ;


 scalar_t__ FAILURE ;
 scalar_t__ IS_BOT (int *) ;
 scalar_t__ IS_PARTIAL_OBJECT (int *) ;
 int SUCCESS ;
 int ZEND_ISEMPTY ;
 int ZVAL_BOOL (int *,int) ;
 int ct_eval_isset_isempty (int *,int,int *) ;
 scalar_t__ fetch_obj_prop (int **,int *,int *) ;

__attribute__((used)) static inline int ct_eval_isset_obj(zval *result, uint32_t extended_value, zval *op1, zval *op2) {
 if (IS_PARTIAL_OBJECT(op1)) {
  zval *value;
  if (fetch_obj_prop(&value, op1, op2) == FAILURE) {
   return FAILURE;
  }
  if (!value || IS_BOT(value)) {
   return FAILURE;
  }
  return ct_eval_isset_isempty(result, extended_value, value);
 } else {
  ZVAL_BOOL(result, (extended_value & ZEND_ISEMPTY));
  return SUCCESS;
 }
}
