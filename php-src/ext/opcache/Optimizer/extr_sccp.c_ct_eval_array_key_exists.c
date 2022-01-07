
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int FAILURE ;
 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_BOT (int *) ;
 scalar_t__ IS_LONG ;
 scalar_t__ IS_NULL ;
 scalar_t__ IS_PARTIAL_ARRAY (int *) ;
 scalar_t__ IS_STRING ;
 int SUCCESS ;
 int ZVAL_BOOL (int *,int ) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int fetch_array_elem (int **,int *,int *) ;

__attribute__((used)) static inline int ct_eval_array_key_exists(zval *result, zval *op1, zval *op2) {
 zval *value;

 if (Z_TYPE_P(op2) != IS_ARRAY && !IS_PARTIAL_ARRAY(op2)) {
  return FAILURE;
 }
 if (Z_TYPE_P(op1) != IS_STRING && Z_TYPE_P(op1) != IS_LONG && Z_TYPE_P(op1) != IS_NULL) {
  return FAILURE;
 }
 if (fetch_array_elem(&value, op2, op1) == FAILURE) {
  return FAILURE;
 }
 if (IS_PARTIAL_ARRAY(op2) && (!value || IS_BOT(value))) {
  return FAILURE;
 }

 ZVAL_BOOL(result, value != ((void*)0));
 return SUCCESS;
}
