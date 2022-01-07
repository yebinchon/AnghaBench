
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_add_word (int *,int) ;
 int BN_bntest_rand (int *,int,int ,int ) ;
 int BN_copy (int *,int *) ;
 int BN_free (int *) ;
 int BN_generate_prime_ex (int *,int,int ,int *,int *,int *) ;
 scalar_t__ BN_is_negative (int *) ;
 scalar_t__ BN_is_word (int *,int) ;
 scalar_t__ BN_is_zero (int *) ;
 int BN_kronecker (int *,int *,int ) ;
 int BN_mod_exp_recp (int *,int *,int *,int *,int ) ;
 int * BN_new () ;
 int BN_rshift1 (int *,int *) ;
 int BN_set_negative (int *,int) ;
 int BN_sub_word (int *,int) ;
 int BN_ucmp (int *,int *) ;
 int NUM0 ;
 int TEST_info (char*) ;
 int TEST_int_eq (int,int) ;
 int TEST_int_ge (int,int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int ctx ;
 int rand_neg () ;

__attribute__((used)) static int test_kronecker(void)
{
    BIGNUM *a = ((void*)0), *b = ((void*)0), *r = ((void*)0), *t = ((void*)0);
    int i, legendre, kronecker, st = 0;

    if (!TEST_ptr(a = BN_new())
            || !TEST_ptr(b = BN_new())
            || !TEST_ptr(r = BN_new())
            || !TEST_ptr(t = BN_new()))
        goto err;
    if (!TEST_true(BN_generate_prime_ex(b, 512, 0, ((void*)0), ((void*)0), ((void*)0))))
        goto err;
    BN_set_negative(b, rand_neg());

    for (i = 0; i < NUM0; i++) {
        if (!TEST_true(BN_bntest_rand(a, 512, 0, 0)))
            goto err;
        BN_set_negative(a, rand_neg());


        if (!TEST_true(BN_copy(t, b)))
            goto err;
        BN_set_negative(t, 0);
        if (!TEST_true(BN_sub_word(t, 1)))
            goto err;
        if (!TEST_true(BN_rshift1(t, t)))
            goto err;

        BN_set_negative(b, 0);

        if (!TEST_true(BN_mod_exp_recp(r, a, t, b, ctx)))
            goto err;
        BN_set_negative(b, 1);

        if (BN_is_word(r, 1))
            legendre = 1;
        else if (BN_is_zero(r))
            legendre = 0;
        else {
            if (!TEST_true(BN_add_word(r, 1)))
                goto err;
            if (!TEST_int_eq(BN_ucmp(r, b), 0)) {
                TEST_info("Legendre symbol computation failed");
                goto err;
            }
            legendre = -1;
        }

        if (!TEST_int_ge(kronecker = BN_kronecker(a, b, ctx), -1))
            goto err;

        if (BN_is_negative(a) && BN_is_negative(b))
            kronecker = -kronecker;

        if (!TEST_int_eq(legendre, kronecker))
            goto err;
    }

    st = 1;
 err:
    BN_free(a);
    BN_free(b);
    BN_free(r);
    BN_free(t);
    return st;
}
