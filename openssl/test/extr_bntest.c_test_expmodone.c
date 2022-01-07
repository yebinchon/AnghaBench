
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_mod_exp (int *,int *,int *,int *,int *) ;
 int BN_mod_exp_mont (int *,int *,int *,int *,int *,int *) ;
 int BN_mod_exp_mont_consttime (int *,int *,int *,int *,int *,int *) ;
 int BN_mod_exp_mont_word (int *,int,int *,int *,int *,int *) ;
 int BN_mod_exp_recp (int *,int *,int *,int *,int *) ;
 int BN_mod_exp_simple (int *,int *,int *,int *,int *) ;
 int * BN_new () ;
 int BN_set_negative (int *,int) ;
 int BN_set_word (int *,int) ;
 int TEST_BN_eq_zero (int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;

__attribute__((used)) static int test_expmodone(void)
{
    int ret = 0, i;
    BIGNUM *r = BN_new();
    BIGNUM *a = BN_new();
    BIGNUM *p = BN_new();
    BIGNUM *m = BN_new();

    if (!TEST_ptr(r)
            || !TEST_ptr(a)
            || !TEST_ptr(p)
            || !TEST_ptr(p)
            || !TEST_ptr(m)
            || !TEST_true(BN_set_word(a, 1))
            || !TEST_true(BN_set_word(p, 0))
            || !TEST_true(BN_set_word(m, 1)))
        goto err;


    for (i = 0; i < 2; i++) {
        if (!TEST_true(BN_mod_exp(r, a, p, m, ((void*)0)))
                || !TEST_BN_eq_zero(r)
                || !TEST_true(BN_mod_exp_mont(r, a, p, m, ((void*)0), ((void*)0)))
                || !TEST_BN_eq_zero(r)
                || !TEST_true(BN_mod_exp_mont_consttime(r, a, p, m, ((void*)0), ((void*)0)))
                || !TEST_BN_eq_zero(r)
                || !TEST_true(BN_mod_exp_mont_word(r, 1, p, m, ((void*)0), ((void*)0)))
                || !TEST_BN_eq_zero(r)
                || !TEST_true(BN_mod_exp_simple(r, a, p, m, ((void*)0)))
                || !TEST_BN_eq_zero(r)
                || !TEST_true(BN_mod_exp_recp(r, a, p, m, ((void*)0)))
                || !TEST_BN_eq_zero(r))
            goto err;

        if (i == 0)
            BN_set_negative(m, 1);
    }

    ret = 1;
 err:
    BN_free(r);
    BN_free(a);
    BN_free(p);
    BN_free(m);
    return ret;
}
