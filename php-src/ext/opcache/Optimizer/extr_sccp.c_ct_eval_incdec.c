
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_uchar ;


 int SUCCESS ;
 scalar_t__ ZEND_POST_INC ;
 scalar_t__ ZEND_POST_INC_OBJ ;
 scalar_t__ ZEND_PRE_INC ;
 scalar_t__ ZEND_PRE_INC_OBJ ;
 int ZVAL_COPY (int *,int *) ;
 int decrement_function (int *) ;
 int increment_function (int *) ;

__attribute__((used)) static inline int ct_eval_incdec(zval *result, zend_uchar opcode, zval *op1) {
 ZVAL_COPY(result, op1);
 if (opcode == ZEND_PRE_INC
   || opcode == ZEND_POST_INC
   || opcode == ZEND_PRE_INC_OBJ
   || opcode == ZEND_POST_INC_OBJ) {
  increment_function(result);
 } else {
  decrement_function(result);
 }
 return SUCCESS;
}
