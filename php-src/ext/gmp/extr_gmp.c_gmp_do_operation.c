
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_uchar ;


 int SUCCESS ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int gmp_do_operation_ex (int ,int *,int *,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int gmp_do_operation(zend_uchar opcode, zval *result, zval *op1, zval *op2)
{
 zval op1_copy;
 int retval;

 if (result == op1) {
  ZVAL_COPY_VALUE(&op1_copy, op1);
  op1 = &op1_copy;
 }

 retval = gmp_do_operation_ex(opcode, result, op1, op2);

 if (retval == SUCCESS && op1 == &op1_copy) {
  zval_ptr_dtor(op1);
 }

 return retval;
}
