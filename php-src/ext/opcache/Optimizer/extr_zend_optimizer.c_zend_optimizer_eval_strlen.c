
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int FAILURE ;
 scalar_t__ IS_STRING ;
 int SUCCESS ;
 int ZVAL_LONG (int *,int ) ;
 int Z_STRLEN_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;

int zend_optimizer_eval_strlen(zval *result, zval *op1)
{
 if (Z_TYPE_P(op1) != IS_STRING) {
  return FAILURE;
 }
 ZVAL_LONG(result, Z_STRLEN_P(op1));
 return SUCCESS;
}
