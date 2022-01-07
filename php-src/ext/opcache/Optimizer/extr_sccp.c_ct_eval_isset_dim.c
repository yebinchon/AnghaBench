
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int uint32_t ;


 scalar_t__ FAILURE ;
 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_BOT (int *) ;
 scalar_t__ IS_PARTIAL_ARRAY (int *) ;
 scalar_t__ IS_STRING ;
 int SUCCESS ;
 int ZEND_ISEMPTY ;
 int ZVAL_BOOL (int *,int) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int ct_eval_isset_isempty (int *,int,int *) ;
 scalar_t__ fetch_array_elem (int **,int *,int *) ;

__attribute__((used)) static inline int ct_eval_isset_dim(zval *result, uint32_t extended_value, zval *op1, zval *op2) {
 if (Z_TYPE_P(op1) == IS_ARRAY || IS_PARTIAL_ARRAY(op1)) {
  zval *value;
  if (fetch_array_elem(&value, op1, op2) == FAILURE) {
   return FAILURE;
  }
  if (IS_PARTIAL_ARRAY(op1) && (!value || IS_BOT(value))) {
   return FAILURE;
  }
  return ct_eval_isset_isempty(result, extended_value, value);
 } else if (Z_TYPE_P(op1) == IS_STRING) {

  return FAILURE;
 } else {
  ZVAL_BOOL(result, (extended_value & ZEND_ISEMPTY));
  return SUCCESS;
 }
}
