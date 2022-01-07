
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_bntest_rand (int *,int,int ,int ) ;
 int BN_div (int *,int *,int *,int *,int ) ;
 int BN_free (int *) ;
 int BN_mod (int *,int *,int *,int ) ;
 int * BN_new () ;
 int BN_set_negative (int *,int ) ;
 int BN_sub (int *,int *,int *) ;
 int NUM0 ;
 scalar_t__ TEST_BN_eq_zero (int *) ;
 int TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int ctx ;
 int rand_neg () ;

__attribute__((used)) static int test_mod(void)
{
    BIGNUM *a = ((void*)0), *b = ((void*)0), *c = ((void*)0), *d = ((void*)0), *e = ((void*)0);
    int st = 0, i;

    if (!TEST_ptr(a = BN_new())
            || !TEST_ptr(b = BN_new())
            || !TEST_ptr(c = BN_new())
            || !TEST_ptr(d = BN_new())
            || !TEST_ptr(e = BN_new()))
        goto err;

    if (!(TEST_true(BN_bntest_rand(a, 1024, 0, 0))))
        goto err;
    for (i = 0; i < NUM0; i++) {
        if (!(TEST_true(BN_bntest_rand(b, 450 + i * 10, 0, 0))))
            goto err;
        BN_set_negative(a, rand_neg());
        BN_set_negative(b, rand_neg());
        if (!(TEST_true(BN_mod(c, a, b, ctx))
                && TEST_true(BN_div(d, e, a, b, ctx))
                && TEST_true(BN_sub(e, e, c))
                && TEST_BN_eq_zero(e)))
            goto err;
    }
    st = 1;
 err:
    BN_free(a);
    BN_free(b);
    BN_free(c);
    BN_free(d);
    BN_free(e);
    return st;
}
