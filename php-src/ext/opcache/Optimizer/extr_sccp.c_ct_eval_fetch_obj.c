
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int FAILURE ;
 int IS_BOT (int *) ;
 scalar_t__ IS_PARTIAL_OBJECT (int *) ;
 scalar_t__ SUCCESS ;
 int ZVAL_COPY (int *,int *) ;
 scalar_t__ fetch_obj_prop (int **,int *,int *) ;

__attribute__((used)) static inline int ct_eval_fetch_obj(zval *result, zval *op1, zval *op2) {
 if (IS_PARTIAL_OBJECT(op1)) {
  zval *value;
  if (fetch_obj_prop(&value, op1, op2) == SUCCESS && value && !IS_BOT(value)) {
   ZVAL_COPY(result, value);
   return SUCCESS;
  }
 }
 return FAILURE;
}
