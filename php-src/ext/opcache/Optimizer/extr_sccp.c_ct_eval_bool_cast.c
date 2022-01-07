
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int FAILURE ;
 scalar_t__ IS_PARTIAL_ARRAY (int *) ;
 int SUCCESS ;
 int ZVAL_BOOL (int *,int ) ;
 int ZVAL_TRUE (int *) ;
 int Z_ARRVAL_P (int *) ;
 scalar_t__ zend_hash_num_elements (int ) ;
 int zend_is_true (int *) ;

__attribute__((used)) static inline int ct_eval_bool_cast(zval *result, zval *op) {
 if (IS_PARTIAL_ARRAY(op)) {
  if (zend_hash_num_elements(Z_ARRVAL_P(op)) == 0) {


   return FAILURE;
  }

  ZVAL_TRUE(result);
  return SUCCESS;
 }

 ZVAL_BOOL(result, zend_is_true(op));
 return SUCCESS;
}
