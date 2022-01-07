
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int FAILURE ;
 int IS_PARTIAL_OBJECT (int *) ;

 int SUCCESS ;
 int ZEND_ASSERT (int ) ;
 int Z_ARR_P (int *) ;
 int Z_STR_P (int *) ;
 int Z_TYPE_P (int *) ;
 int zend_symtable_del (int ,int ) ;

__attribute__((used)) static inline int ct_eval_del_obj_prop(zval *result, zval *key) {
 ZEND_ASSERT(IS_PARTIAL_OBJECT(result));

 switch (Z_TYPE_P(key)) {
  case 128:
   zend_symtable_del(Z_ARR_P(result), Z_STR_P(key));
   break;
  default:
   return FAILURE;
 }

 return SUCCESS;
}
