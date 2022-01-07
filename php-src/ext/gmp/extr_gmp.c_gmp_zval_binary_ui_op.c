
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int * mpz_ptr ;
typedef int gmp_ulong ;
struct TYPE_6__ {scalar_t__ is_used; } ;
typedef TYPE_1__ gmp_temp_t ;
typedef int (* gmp_binary_ui_op_t ) (int *,int *,int ) ;
typedef int (* gmp_binary_op_t ) (int *,int *,int *) ;


 int E_WARNING ;
 int FETCH_GMP_ZVAL (int *,int *,TYPE_1__) ;
 int FETCH_GMP_ZVAL_DEP (int *,int *,TYPE_1__,TYPE_1__) ;
 int FREE_GMP_TEMP (TYPE_1__) ;
 int INIT_GMP_RETVAL (int *) ;
 scalar_t__ IS_LONG ;
 int RETURN_FALSE ;
 scalar_t__ Z_LVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int mpz_cmp_ui (int *,int ) ;
 int php_error_docref (int *,int ,char*) ;

__attribute__((used)) static inline void gmp_zval_binary_ui_op(zval *return_value, zval *a_arg, zval *b_arg, gmp_binary_op_t gmp_op, gmp_binary_ui_op_t gmp_ui_op, int check_b_zero)
{
 mpz_ptr gmpnum_a, gmpnum_b, gmpnum_result;
 gmp_temp_t temp_a, temp_b;

 FETCH_GMP_ZVAL(gmpnum_a, a_arg, temp_a);

 if (gmp_ui_op && Z_TYPE_P(b_arg) == IS_LONG && Z_LVAL_P(b_arg) >= 0) {
  gmpnum_b = ((void*)0);
  temp_b.is_used = 0;
 } else {
  FETCH_GMP_ZVAL_DEP(gmpnum_b, b_arg, temp_b, temp_a);
 }

 if (check_b_zero) {
  int b_is_zero = 0;
  if (!gmpnum_b) {
   b_is_zero = (Z_LVAL_P(b_arg) == 0);
  } else {
   b_is_zero = !mpz_cmp_ui(gmpnum_b, 0);
  }

  if (b_is_zero) {
   php_error_docref(((void*)0), E_WARNING, "Zero operand not allowed");
   FREE_GMP_TEMP(temp_a);
   FREE_GMP_TEMP(temp_b);
   RETURN_FALSE;
  }
 }

 INIT_GMP_RETVAL(gmpnum_result);

 if (!gmpnum_b) {
  gmp_ui_op(gmpnum_result, gmpnum_a, (gmp_ulong) Z_LVAL_P(b_arg));
 } else {
  gmp_op(gmpnum_result, gmpnum_a, gmpnum_b);
 }

 FREE_GMP_TEMP(temp_a);
 FREE_GMP_TEMP(temp_b);
}
