
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_uchar ;


 int FAILURE ;
 scalar_t__ IS_PARTIAL_ARRAY (int *) ;
 int zend_optimizer_eval_binary_op (int *,int ,int *,int *) ;

__attribute__((used)) static inline int ct_eval_binary_op(zval *result, zend_uchar binop, zval *op1, zval *op2) {

 if (IS_PARTIAL_ARRAY(op1) || IS_PARTIAL_ARRAY(op2)) {
  return FAILURE;
 }

 return zend_optimizer_eval_binary_op(result, binop, op1, op2);
}
