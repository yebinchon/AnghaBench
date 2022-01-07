
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int FAILURE ;

 int SUCCESS ;
 int Z_ARR_P (int *) ;
 int Z_STR_P (int *) ;
 int Z_TYPE_P (int *) ;
 int * zend_symtable_find (int ,int ) ;

__attribute__((used)) static inline int fetch_obj_prop(zval **result, zval *op1, zval *op2) {
 switch (Z_TYPE_P(op2)) {
  case 128:
   *result = zend_symtable_find(Z_ARR_P(op1), Z_STR_P(op2));
   return SUCCESS;
  default:
   return FAILURE;
 }
}
