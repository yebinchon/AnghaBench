
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_FLG_CONSTTIME ;
 int BN_div (int *,int *,int *,int *,int ) ;
 int BN_free (int *) ;
 scalar_t__ BN_is_negative (int *) ;
 int BN_mul (int *,int *,int *,int ) ;
 int * BN_new () ;
 int BN_set_flags (int *,int ) ;
 int BN_set_negative (int *,int) ;
 int BN_set_word (int *,int) ;
 int BN_zero (int *) ;
 int TEST_BN_eq_zero (int *) ;
 int TEST_BN_ge_zero (int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int ctx ;

__attribute__((used)) static int test_negzero(void)
{
    BIGNUM *a = ((void*)0), *b = ((void*)0), *c = ((void*)0), *d = ((void*)0);
    BIGNUM *numerator = ((void*)0), *denominator = ((void*)0);
    int consttime, st = 0;

    if (!TEST_ptr(a = BN_new())
            || !TEST_ptr(b = BN_new())
            || !TEST_ptr(c = BN_new())
            || !TEST_ptr(d = BN_new()))
        goto err;


    if (!TEST_true(BN_set_word(a, 1)))
        goto err;
    BN_set_negative(a, 1);
    BN_zero(b);
    if (!TEST_true(BN_mul(c, a, b, ctx)))
        goto err;
    if (!TEST_BN_eq_zero(c)
            || !TEST_BN_ge_zero(c))
        goto err;

    for (consttime = 0; consttime < 2; consttime++) {
        if (!TEST_ptr(numerator = BN_new())
                || !TEST_ptr(denominator = BN_new()))
            goto err;
        if (consttime) {
            BN_set_flags(numerator, BN_FLG_CONSTTIME);
            BN_set_flags(denominator, BN_FLG_CONSTTIME);
        }

        if (!TEST_true(BN_set_word(numerator, 1))
                || !TEST_true(BN_set_word(denominator, 2)))
            goto err;
        BN_set_negative(numerator, 1);
        if (!TEST_true(BN_div(a, b, numerator, denominator, ctx))
                || !TEST_BN_eq_zero(a)
                || !TEST_BN_ge_zero(a))
            goto err;


        if (!TEST_true(BN_set_word(denominator, 1))
                || !TEST_true(BN_div(a, b, numerator, denominator, ctx))
                || !TEST_BN_eq_zero(b)
                || !TEST_BN_ge_zero(b))
            goto err;
        BN_free(numerator);
        BN_free(denominator);
        numerator = denominator = ((void*)0);
    }


    BN_zero(a);
    BN_set_negative(a, 1);
    if (BN_is_negative(a))
        goto err;
    st = 1;

 err:
    BN_free(a);
    BN_free(b);
    BN_free(c);
    BN_free(d);
    BN_free(numerator);
    BN_free(denominator);
    return st;
}
