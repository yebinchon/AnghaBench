
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_mod_exp (int *,int *,int *,int ,int *) ;
 int BN_mod_exp_mont (int *,int *,int *,int ,int *,int *) ;
 int BN_mod_exp_mont_consttime (int *,int *,int *,int ,int *,int *) ;
 int BN_mod_exp_mont_word (int *,int,int *,int ,int *,int *) ;
 int * BN_new () ;
 int BN_value_one () ;
 int BN_zero (int *) ;
 int TEST_BN_eq_zero (int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;

__attribute__((used)) static int test_expmodzero(void)
{
    BIGNUM *a = ((void*)0), *r = ((void*)0), *zero = ((void*)0);
    int st = 0;

    if (!TEST_ptr(zero = BN_new())
            || !TEST_ptr(a = BN_new())
            || !TEST_ptr(r = BN_new()))
        goto err;
    BN_zero(zero);

    if (!TEST_true(BN_mod_exp(r, a, zero, BN_value_one(), ((void*)0)))
            || !TEST_BN_eq_zero(r)
            || !TEST_true(BN_mod_exp_mont(r, a, zero, BN_value_one(),
                                          ((void*)0), ((void*)0)))
            || !TEST_BN_eq_zero(r)
            || !TEST_true(BN_mod_exp_mont_consttime(r, a, zero,
                                                    BN_value_one(),
                                                    ((void*)0), ((void*)0)))
            || !TEST_BN_eq_zero(r)
            || !TEST_true(BN_mod_exp_mont_word(r, 42, zero,
                                               BN_value_one(), ((void*)0), ((void*)0)))
            || !TEST_BN_eq_zero(r))
        goto err;

    st = 1;
 err:
    BN_free(zero);
    BN_free(a);
    BN_free(r);
    return st;
}
