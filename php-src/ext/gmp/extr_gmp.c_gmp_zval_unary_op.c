
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int mpz_ptr ;
typedef int (* gmp_unary_op_t ) (int ,int ) ;
typedef int gmp_temp_t ;


 int FETCH_GMP_ZVAL (int ,int *,int ) ;
 int FREE_GMP_TEMP (int ) ;
 int INIT_GMP_RETVAL (int ) ;

__attribute__((used)) static inline void gmp_zval_unary_op(zval *return_value, zval *a_arg, gmp_unary_op_t gmp_op)
{
 mpz_ptr gmpnum_a, gmpnum_result;
 gmp_temp_t temp_a;

 FETCH_GMP_ZVAL(gmpnum_a, a_arg, temp_a);

 INIT_GMP_RETVAL(gmpnum_result);
 gmp_op(gmpnum_result, gmpnum_a);

 FREE_GMP_TEMP(temp_a);
}
