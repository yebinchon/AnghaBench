
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_MONT_CTX ;
typedef int BIGNUM ;


 int BN_MONT_CTX_free (int *) ;
 int * BN_MONT_CTX_new () ;
 int BN_MONT_CTX_set (int *,int *,int ) ;
 int BN_div (int *,int *,int ,int *,int ) ;
 int BN_free (int *) ;
 int BN_mod_exp (int *,int ,int ,int *,int ) ;
 int BN_mod_exp_mont (int *,int ,int ,int *,int ,int *) ;
 int BN_mod_exp_mont_consttime (int *,int ,int ,int *,int ,int *) ;
 int BN_mod_mul (int *,int ,int ,int *,int ) ;
 int * BN_new () ;
 int BN_set_word (int *,int) ;
 int BN_value_one () ;
 int BN_zero (int *) ;
 int ERR_clear_error () ;
 int TEST_false (int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int ctx ;

__attribute__((used)) static int test_badmod(void)
{
    BIGNUM *a = ((void*)0), *b = ((void*)0), *zero = ((void*)0);
    BN_MONT_CTX *mont = ((void*)0);
    int st = 0;

    if (!TEST_ptr(a = BN_new())
            || !TEST_ptr(b = BN_new())
            || !TEST_ptr(zero = BN_new())
            || !TEST_ptr(mont = BN_MONT_CTX_new()))
        goto err;
    BN_zero(zero);

    if (!TEST_false(BN_div(a, b, BN_value_one(), zero, ctx)))
        goto err;
    ERR_clear_error();

    if (!TEST_false(BN_mod_mul(a, BN_value_one(), BN_value_one(), zero, ctx)))
        goto err;
    ERR_clear_error();

    if (!TEST_false(BN_mod_exp(a, BN_value_one(), BN_value_one(), zero, ctx)))
        goto err;
    ERR_clear_error();

    if (!TEST_false(BN_mod_exp_mont(a, BN_value_one(), BN_value_one(),
                                    zero, ctx, ((void*)0))))
        goto err;
    ERR_clear_error();

    if (!TEST_false(BN_mod_exp_mont_consttime(a, BN_value_one(), BN_value_one(),
                                              zero, ctx, ((void*)0))))
        goto err;
    ERR_clear_error();

    if (!TEST_false(BN_MONT_CTX_set(mont, zero, ctx)))
        goto err;
    ERR_clear_error();


    if (!TEST_true(BN_set_word(b, 16)))
        goto err;

    if (!TEST_false(BN_MONT_CTX_set(mont, b, ctx)))
        goto err;
    ERR_clear_error();

    if (!TEST_false(BN_mod_exp_mont(a, BN_value_one(), BN_value_one(),
                                    b, ctx, ((void*)0))))
        goto err;
    ERR_clear_error();

    if (!TEST_false(BN_mod_exp_mont_consttime(a, BN_value_one(), BN_value_one(),
                                              b, ctx, ((void*)0))))
        goto err;
    ERR_clear_error();

    st = 1;
 err:
    BN_free(a);
    BN_free(b);
    BN_free(zero);
    BN_MONT_CTX_free(mont);
    return st;
}
