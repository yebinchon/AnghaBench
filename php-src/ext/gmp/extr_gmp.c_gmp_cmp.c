
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
typedef int zend_bool ;
typedef int mpz_ptr ;
struct TYPE_6__ {scalar_t__ is_used; } ;
typedef TYPE_1__ gmp_temp_t ;


 int FETCH_GMP_ZVAL (int ,int *,TYPE_1__) ;
 int FETCH_GMP_ZVAL_DEP (int ,int *,TYPE_1__,TYPE_1__) ;
 int FREE_GMP_TEMP (TYPE_1__) ;
 scalar_t__ IS_LONG ;
 int RETURN_LONG (int ) ;
 int Z_LVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int mpz_cmp (int ,int ) ;
 int mpz_cmp_si (int ,int ) ;

__attribute__((used)) static void gmp_cmp(zval *return_value, zval *a_arg, zval *b_arg)
{
 mpz_ptr gmpnum_a, gmpnum_b;
 gmp_temp_t temp_a, temp_b;
 zend_bool use_si = 0;
 zend_long res;

 FETCH_GMP_ZVAL(gmpnum_a, a_arg, temp_a);

 if (Z_TYPE_P(b_arg) == IS_LONG) {
  use_si = 1;
  temp_b.is_used = 0;
 } else {
  FETCH_GMP_ZVAL_DEP(gmpnum_b, b_arg, temp_b, temp_a);
 }

 if (use_si) {
  res = mpz_cmp_si(gmpnum_a, Z_LVAL_P(b_arg));
 } else {
  res = mpz_cmp(gmpnum_a, gmpnum_b);
 }

 FREE_GMP_TEMP(temp_a);
 FREE_GMP_TEMP(temp_b);

 RETURN_LONG(res);
}
