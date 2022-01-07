
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int FAILURE ;



 int Z_TYPE_P (int *) ;
 int ct_eval_add_obj_prop (int *,int *,int *) ;
 int empty_partial_object (int *) ;

__attribute__((used)) static inline int ct_eval_assign_obj(zval *result, zval *value, zval *key) {
 switch (Z_TYPE_P(result)) {
  case 129:
  case 130:
   empty_partial_object(result);

  case 128:
   return ct_eval_add_obj_prop(result, value, key);
  default:
   return FAILURE;
 }
}
