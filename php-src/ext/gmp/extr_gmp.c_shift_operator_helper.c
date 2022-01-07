
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_long ;
typedef int mpz_ptr ;
typedef int gmp_ulong ;
typedef int gmp_temp_t ;
typedef int (* gmp_binary_ui_op_t ) (int ,int ,int ) ;


 int E_WARNING ;
 int FETCH_GMP_ZVAL (int ,int *,int ) ;
 int FREE_GMP_TEMP (int ) ;
 int INIT_GMP_RETVAL (int ) ;
 int RETVAL_FALSE ;
 int php_error_docref (int *,int ,char*) ;
 scalar_t__ zval_get_long (int *) ;

__attribute__((used)) static void shift_operator_helper(gmp_binary_ui_op_t op, zval *return_value, zval *op1, zval *op2) {
 zend_long shift = zval_get_long(op2);

 if (shift < 0) {
  php_error_docref(((void*)0), E_WARNING, "Shift cannot be negative");
  RETVAL_FALSE;
 } else {
  mpz_ptr gmpnum_op, gmpnum_result;
  gmp_temp_t temp;

  FETCH_GMP_ZVAL(gmpnum_op, op1, temp);
  INIT_GMP_RETVAL(gmpnum_result);
  op(gmpnum_result, gmpnum_op, (gmp_ulong) shift);
  FREE_GMP_TEMP(temp);
 }
}
