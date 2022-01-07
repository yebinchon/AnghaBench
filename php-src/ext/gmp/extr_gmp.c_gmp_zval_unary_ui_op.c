
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int mpz_ptr ;
typedef int (* gmp_unary_ui_op_t ) (int ,int ) ;


 int INIT_GMP_RETVAL (int ) ;
 int zval_get_long (int *) ;

__attribute__((used)) static inline void gmp_zval_unary_ui_op(zval *return_value, zval *a_arg, gmp_unary_ui_op_t gmp_op)
{
 mpz_ptr gmpnum_result;

 INIT_GMP_RETVAL(gmpnum_result);
 gmp_op(gmpnum_result, zval_get_long(a_arg));
}
