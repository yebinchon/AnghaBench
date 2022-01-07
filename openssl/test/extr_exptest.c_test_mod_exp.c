
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 unsigned char BN_BITS ;
 unsigned char BN_BITS2 ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_BOTTOM_ODD ;
 int BN_RAND_TOP_ONE ;
 scalar_t__ BN_cmp (int *,int *) ;
 int BN_free (int *) ;
 int BN_mod (int *,int *,int *,int *) ;
 int BN_mod_exp_mont (int *,int *,int *,int *,int *,int *) ;
 int BN_mod_exp_mont_consttime (int *,int *,int *,int *,int *,int *) ;
 int BN_mod_exp_recp (int *,int *,int *,int *,int *) ;
 int BN_mod_exp_simple (int *,int *,int *,int *,int *) ;
 int * BN_new () ;
 int BN_print_var (int *) ;
 int BN_rand (int *,scalar_t__,int ,int ) ;
 scalar_t__ NUM_BITS ;
 int RAND_bytes (unsigned char*,int) ;
 int TEST_BN_eq (int *,int *) ;
 int TEST_info (char*) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;

__attribute__((used)) static int test_mod_exp(int round)
{
    BN_CTX *ctx;
    unsigned char c;
    int ret = 0;
    BIGNUM *r_mont = ((void*)0);
    BIGNUM *r_mont_const = ((void*)0);
    BIGNUM *r_recp = ((void*)0);
    BIGNUM *r_simple = ((void*)0);
    BIGNUM *a = ((void*)0);
    BIGNUM *b = ((void*)0);
    BIGNUM *m = ((void*)0);

    if (!TEST_ptr(ctx = BN_CTX_new()))
        goto err;

    if (!TEST_ptr(r_mont = BN_new())
        || !TEST_ptr(r_mont_const = BN_new())
        || !TEST_ptr(r_recp = BN_new())
        || !TEST_ptr(r_simple = BN_new())
        || !TEST_ptr(a = BN_new())
        || !TEST_ptr(b = BN_new())
        || !TEST_ptr(m = BN_new()))
        goto err;

    RAND_bytes(&c, 1);
    c = (c % BN_BITS) - BN_BITS2;
    BN_rand(a, NUM_BITS + c, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY);

    RAND_bytes(&c, 1);
    c = (c % BN_BITS) - BN_BITS2;
    BN_rand(b, NUM_BITS + c, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY);

    RAND_bytes(&c, 1);
    c = (c % BN_BITS) - BN_BITS2;
    BN_rand(m, NUM_BITS + c, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ODD);

    if (!TEST_true(BN_mod(a, a, m, ctx))
        || !TEST_true(BN_mod(b, b, m, ctx))
        || !TEST_true(BN_mod_exp_mont(r_mont, a, b, m, ctx, ((void*)0)))
        || !TEST_true(BN_mod_exp_recp(r_recp, a, b, m, ctx))
        || !TEST_true(BN_mod_exp_simple(r_simple, a, b, m, ctx))
        || !TEST_true(BN_mod_exp_mont_consttime(r_mont_const, a, b, m, ctx, ((void*)0))))
        goto err;

    if (!TEST_BN_eq(r_simple, r_mont)
        || !TEST_BN_eq(r_simple, r_recp)
        || !TEST_BN_eq(r_simple, r_mont_const)) {
        if (BN_cmp(r_simple, r_mont) != 0)
            TEST_info("simple and mont results differ");
        if (BN_cmp(r_simple, r_mont_const) != 0)
            TEST_info("simple and mont const time results differ");
        if (BN_cmp(r_simple, r_recp) != 0)
            TEST_info("simple and recp results differ");

        BN_print_var(a);
        BN_print_var(b);
        BN_print_var(m);
        BN_print_var(r_simple);
        BN_print_var(r_recp);
        BN_print_var(r_mont);
        BN_print_var(r_mont_const);
        goto err;
    }

    ret = 1;
 err:
    BN_free(r_mont);
    BN_free(r_mont_const);
    BN_free(r_recp);
    BN_free(r_simple);
    BN_free(a);
    BN_free(b);
    BN_free(m);
    BN_CTX_free(ctx);

    return ret;
}
