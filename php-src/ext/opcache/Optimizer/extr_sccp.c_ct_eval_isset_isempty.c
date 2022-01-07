
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int uint32_t ;


 int FAILURE ;
 scalar_t__ IS_FALSE ;
 scalar_t__ IS_NULL ;
 int SUCCESS ;
 int ZEND_ISEMPTY ;
 int ZVAL_BOOL (int *,int) ;
 int ZVAL_TRUE (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int ct_eval_bool_cast (int *,int *) ;

__attribute__((used)) static inline int ct_eval_isset_isempty(zval *result, uint32_t extended_value, zval *op1) {
 zval zv;
 if (!(extended_value & ZEND_ISEMPTY)) {
  ZVAL_BOOL(result, op1 && Z_TYPE_P(op1) != IS_NULL);
  return SUCCESS;
 } else if (!op1) {
  ZVAL_TRUE(result);
  return SUCCESS;
 } else if (ct_eval_bool_cast(&zv, op1) == SUCCESS) {
  ZVAL_BOOL(result, Z_TYPE(zv) == IS_FALSE);
  return SUCCESS;
 } else {
  return FAILURE;
 }
}
