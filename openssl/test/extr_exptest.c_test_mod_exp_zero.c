
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_ULONG ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_ONE ;
 int BN_free (int *) ;
 int BN_mod_exp (int *,int *,int *,int *,int *) ;
 int BN_mod_exp_mont (int *,int *,int *,int *,int *,int *) ;
 int BN_mod_exp_mont_consttime (int *,int *,int *,int *,int *,int *) ;
 int BN_mod_exp_mont_word (int *,int,int *,int *,int *,int *) ;
 int BN_mod_exp_recp (int *,int *,int *,int *,int *) ;
 int BN_mod_exp_simple (int *,int *,int *,int *,int *) ;
 int * BN_new () ;
 int BN_one (int *) ;
 int BN_print_var (int *) ;
 int BN_rand (int *,int,int ,int ) ;
 int BN_zero (int *) ;
 int TEST_BN_eq_zero (int *) ;
 int TEST_error (char*) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int a_is_zero_mod_one (char*,int *,int *) ;

__attribute__((used)) static int test_mod_exp_zero(void)
{
    BIGNUM *a = ((void*)0), *p = ((void*)0), *m = ((void*)0);
    BIGNUM *r = ((void*)0);
    BN_ULONG one_word = 1;
    BN_CTX *ctx = BN_CTX_new();
    int ret = 1, failed = 0;

    if (!TEST_ptr(m = BN_new())
        || !TEST_ptr(a = BN_new())
        || !TEST_ptr(p = BN_new())
        || !TEST_ptr(r = BN_new()))
        goto err;

    BN_one(m);
    BN_one(a);
    BN_zero(p);

    if (!TEST_true(BN_rand(a, 1024, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY)))
        goto err;

    if (!TEST_true(BN_mod_exp(r, a, p, m, ctx)))
        goto err;

    if (!TEST_true(a_is_zero_mod_one("BN_mod_exp", r, a)))
        failed = 1;

    if (!TEST_true(BN_mod_exp_recp(r, a, p, m, ctx)))
        goto err;

    if (!TEST_true(a_is_zero_mod_one("BN_mod_exp_recp", r, a)))
        failed = 1;

    if (!TEST_true(BN_mod_exp_simple(r, a, p, m, ctx)))
        goto err;

    if (!TEST_true(a_is_zero_mod_one("BN_mod_exp_simple", r, a)))
        failed = 1;

    if (!TEST_true(BN_mod_exp_mont(r, a, p, m, ctx, ((void*)0))))
        goto err;

    if (!TEST_true(a_is_zero_mod_one("BN_mod_exp_mont", r, a)))
        failed = 1;

    if (!TEST_true(BN_mod_exp_mont_consttime(r, a, p, m, ctx, ((void*)0))))
        goto err;

    if (!TEST_true(a_is_zero_mod_one("BN_mod_exp_mont_consttime", r, a)))
        failed = 1;





    if (!TEST_true(BN_mod_exp_mont_word(r, one_word, p, m, ctx, ((void*)0))))
        goto err;

    if (!TEST_BN_eq_zero(r)) {
        TEST_error("BN_mod_exp_mont_word failed: "
                   "1 ** 0 mod 1 = r (should be 0)");
        BN_print_var(r);
        goto err;
    }

    ret = !failed;
 err:
    BN_free(r);
    BN_free(a);
    BN_free(p);
    BN_free(m);
    BN_CTX_free(ctx);

    return ret;
}
