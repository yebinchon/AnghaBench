
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_long ;


 int FAILURE ;


 int SUCCESS ;
 int Z_LVAL_P (int *) ;
 int Z_STRLEN_P (int *) ;
 int Z_STRVAL_P (int *) ;
 int Z_TYPE_P (int *) ;
 int const is_numeric_string (int ,int ,int *,int *,int ) ;

__attribute__((used)) static inline int zval_to_string_offset(zend_long *result, zval *op) {
 switch (Z_TYPE_P(op)) {
  case 129:
   *result = Z_LVAL_P(op);
   return SUCCESS;
  case 128:
   if (129 == is_numeric_string(
     Z_STRVAL_P(op), Z_STRLEN_P(op), result, ((void*)0), 0)) {
    return SUCCESS;
   }
   return FAILURE;
  default:
   return FAILURE;
 }
}
