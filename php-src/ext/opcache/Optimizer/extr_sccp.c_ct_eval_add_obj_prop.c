
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int FAILURE ;

 int SUCCESS ;
 int Z_ARR_P (int *) ;
 int Z_STR_P (int *) ;
 int Z_TRY_ADDREF_P (int *) ;
 int Z_TYPE_P (int *) ;
 int * zend_symtable_update (int ,int ,int *) ;

__attribute__((used)) static inline int ct_eval_add_obj_prop(zval *result, zval *value, zval *key) {
 switch (Z_TYPE_P(key)) {
  case 128:
   value = zend_symtable_update(Z_ARR_P(result), Z_STR_P(key), value);
   break;
  default:
   return FAILURE;
 }

 Z_TRY_ADDREF_P(value);
 return SUCCESS;
}
