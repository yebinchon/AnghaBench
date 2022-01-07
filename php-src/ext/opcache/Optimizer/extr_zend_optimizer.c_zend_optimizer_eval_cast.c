
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int uint32_t ;


 int FAILURE ;





 int SUCCESS ;
 int ZVAL_BOOL (int *,int ) ;
 int ZVAL_COPY (int *,int *) ;
 int ZVAL_DOUBLE (int *,int ) ;
 int ZVAL_LONG (int *,int ) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STR (int *,int ) ;
 int const Z_TYPE_P (int *) ;

 int convert_to_array (int *) ;
 int zval_get_double (int *) ;
 int zval_get_long (int *) ;
 int zval_get_string (int *) ;
 int zval_is_true (int *) ;

int zend_optimizer_eval_cast(zval *result, uint32_t type, zval *op1)
{
 switch (type) {
  case 130:
   ZVAL_NULL(result);
   return SUCCESS;
  case 128:
   ZVAL_BOOL(result, zval_is_true(op1));
   return SUCCESS;
  case 131:
   ZVAL_LONG(result, zval_get_long(op1));
   return SUCCESS;
  case 132:
   ZVAL_DOUBLE(result, zval_get_double(op1));
   return SUCCESS;
  case 129:


   if (Z_TYPE_P(op1) != 133 && Z_TYPE_P(op1) != 132) {
    ZVAL_STR(result, zval_get_string(op1));
    return SUCCESS;
   }
   break;
  case 133:
   ZVAL_COPY(result, op1);
   convert_to_array(result);
   return SUCCESS;
 }
 return FAILURE;
}
