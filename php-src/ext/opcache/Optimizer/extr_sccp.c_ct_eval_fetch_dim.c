
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef size_t zend_long ;


 scalar_t__ FAILURE ;
 scalar_t__ IS_ARRAY ;
 int IS_BOT (int *) ;
 scalar_t__ IS_PARTIAL_ARRAY (int *) ;
 scalar_t__ IS_STRING ;
 scalar_t__ SUCCESS ;
 int ZVAL_COPY (int *,int *) ;
 int ZVAL_STR (int *,int ) ;
 size_t Z_STRLEN_P (int *) ;
 int * Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 scalar_t__ fetch_array_elem (int **,int *,int *) ;
 int zend_string_init (int *,int,int ) ;
 scalar_t__ zval_to_string_offset (size_t*,int *) ;

__attribute__((used)) static inline int ct_eval_fetch_dim(zval *result, zval *op1, zval *op2, int support_strings) {
 if (Z_TYPE_P(op1) == IS_ARRAY || IS_PARTIAL_ARRAY(op1)) {
  zval *value;
  if (fetch_array_elem(&value, op1, op2) == SUCCESS && value && !IS_BOT(value)) {
   ZVAL_COPY(result, value);
   return SUCCESS;
  }
 } else if (support_strings && Z_TYPE_P(op1) == IS_STRING) {
  zend_long index;
  if (zval_to_string_offset(&index, op2) == FAILURE) {
   return FAILURE;
  }
  if (index >= 0 && index < Z_STRLEN_P(op1)) {
   ZVAL_STR(result, zend_string_init(&Z_STRVAL_P(op1)[index], 1, 0));
   return SUCCESS;
  }
 }
 return FAILURE;
}
