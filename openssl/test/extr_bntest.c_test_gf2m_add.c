
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_GF2m_add (int *,int *,int *) ;
 int * BN_copy (int *,int ) ;
 int BN_free (int *) ;
 scalar_t__ BN_is_odd (int *) ;
 int * BN_new () ;
 int BN_rand (int *,int,int ,int ) ;
 int BN_set_negative (int *,int ) ;
 int BN_value_one () ;
 int NUM0 ;
 scalar_t__ TEST_BN_eq_zero (int *) ;
 scalar_t__ TEST_false (int) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int rand_neg () ;

__attribute__((used)) static int test_gf2m_add(void)
{
    BIGNUM *a = ((void*)0), *b = ((void*)0), *c = ((void*)0);
    int i, st = 0;

    if (!TEST_ptr(a = BN_new())
            || !TEST_ptr(b = BN_new())
            || !TEST_ptr(c = BN_new()))
        goto err;

    for (i = 0; i < NUM0; i++) {
        if (!(TEST_true(BN_rand(a, 512, 0, 0))
                && TEST_ptr(BN_copy(b, BN_value_one()))))
            goto err;
        BN_set_negative(a, rand_neg());
        BN_set_negative(b, rand_neg());
        if (!(TEST_true(BN_GF2m_add(c, a, b))

                && TEST_false((BN_is_odd(a) && BN_is_odd(c))
                        || (!BN_is_odd(a) && !BN_is_odd(c)))))
            goto err;
        if (!(TEST_true(BN_GF2m_add(c, c, c))

                && TEST_BN_eq_zero(c)))
            goto err;
    }
    st = 1;
 err:
    BN_free(a);
    BN_free(b);
    BN_free(c);
    return st;
}
