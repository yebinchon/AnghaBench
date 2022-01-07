
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_RECP_CTX ;
typedef int BIGNUM ;


 int BN_RECP_CTX_free (int *) ;
 int * BN_RECP_CTX_new () ;
 int BN_RECP_CTX_set (int *,int *,int ) ;
 int BN_add (int *,int *,int *) ;
 int BN_add_word (int *,int) ;
 int BN_bntest_rand (int *,int,int ,int ) ;
 int * BN_copy (int *,int *) ;
 int BN_div_recp (int *,int *,int *,int *,int ) ;
 int BN_free (int *) ;
 int BN_lshift (int *,int *,int) ;
 int BN_mul (int *,int *,int *,int ) ;
 int * BN_new () ;
 int BN_set_negative (int *,int ) ;
 int BN_sub (int *,int *,int *) ;
 int NUM0 ;
 int NUM1 ;
 scalar_t__ TEST_BN_eq_zero (int *) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int ctx ;
 int rand_neg () ;

__attribute__((used)) static int test_div_recip(void)
{
    BIGNUM *a = ((void*)0), *b = ((void*)0), *c = ((void*)0), *d = ((void*)0), *e = ((void*)0);
    BN_RECP_CTX *recp = ((void*)0);
    int st = 0, i;

    if (!TEST_ptr(a = BN_new())
            || !TEST_ptr(b = BN_new())
            || !TEST_ptr(c = BN_new())
            || !TEST_ptr(d = BN_new())
            || !TEST_ptr(e = BN_new())
            || !TEST_ptr(recp = BN_RECP_CTX_new()))
        goto err;

    for (i = 0; i < NUM0 + NUM1; i++) {
        if (i < NUM1) {
            if (!(TEST_true(BN_bntest_rand(a, 400, 0, 0))
                    && TEST_ptr(BN_copy(b, a))
                    && TEST_true(BN_lshift(a, a, i))
                    && TEST_true(BN_add_word(a, i))))
                goto err;
        } else {
            if (!(TEST_true(BN_bntest_rand(b, 50 + 3 * (i - NUM1), 0, 0))))
                goto err;
        }
        BN_set_negative(a, rand_neg());
        BN_set_negative(b, rand_neg());
        if (!(TEST_true(BN_RECP_CTX_set(recp, b, ctx))
                && TEST_true(BN_div_recp(d, c, a, recp, ctx))
                && TEST_true(BN_mul(e, d, b, ctx))
                && TEST_true(BN_add(d, e, c))
                && TEST_true(BN_sub(d, d, a))
                && TEST_BN_eq_zero(d)))
            goto err;
    }
    st = 1;
 err:
    BN_free(a);
    BN_free(b);
    BN_free(c);
    BN_free(d);
    BN_free(e);
    BN_RECP_CTX_free(recp);
    return st;
}
