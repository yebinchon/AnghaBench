
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STANZA ;
typedef int BIGNUM ;


 scalar_t__ BN_add (int *,int *,int ) ;
 int BN_copy (int *,int *) ;
 int BN_div (int *,int *,int *,int *,int ) ;
 int BN_free (int *) ;
 int BN_mul (int *,int *,int *,int ) ;
 int * BN_new () ;
 int BN_set_negative (int *,int) ;
 int BN_sqr (int *,int *,int ) ;
 int BN_sqrt (int *,int *,int ) ;
 int BN_value_one () ;
 int BN_zero (int *) ;
 int ERR_clear_error () ;
 int TEST_BN_eq_zero (int *) ;
 int TEST_int_eq (int ,...) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int ctx ;
 int equalBN (char*,int *,int *) ;
 int * getBN (int *,char*) ;

__attribute__((used)) static int file_square(STANZA *s)
{
    BIGNUM *a = ((void*)0), *square = ((void*)0), *zero = ((void*)0), *ret = ((void*)0);
    BIGNUM *remainder = ((void*)0), *tmp = ((void*)0);
    int st = 0;

    if (!TEST_ptr(a = getBN(s, "A"))
            || !TEST_ptr(square = getBN(s, "Square"))
            || !TEST_ptr(zero = BN_new())
            || !TEST_ptr(ret = BN_new())
            || !TEST_ptr(remainder = BN_new()))
        goto err;

    BN_zero(zero);
    if (!TEST_true(BN_sqr(ret, a, ctx))
            || !equalBN("A^2", square, ret)
            || !TEST_true(BN_mul(ret, a, a, ctx))
            || !equalBN("A * A", square, ret)
            || !TEST_true(BN_div(ret, remainder, square, a, ctx))
            || !equalBN("Square / A", a, ret)
            || !equalBN("Square % A", zero, remainder))
        goto err;
    st = 1;
 err:
    BN_free(a);
    BN_free(square);
    BN_free(zero);
    BN_free(ret);
    BN_free(remainder);
    BN_free(tmp);
    return st;
}
