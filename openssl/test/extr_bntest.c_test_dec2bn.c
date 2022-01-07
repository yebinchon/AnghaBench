
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_free (int *) ;
 int TEST_BN_abs_eq_word (int *,int) ;
 int TEST_BN_eq_one (int *) ;
 int TEST_BN_eq_word (int *,int) ;
 int TEST_BN_eq_zero (int *) ;
 int TEST_BN_even (int *) ;
 int TEST_BN_ge_zero (int *) ;
 int TEST_BN_gt_zero (int *) ;
 int TEST_BN_le_zero (int *) ;
 int TEST_BN_lt_zero (int *) ;
 int TEST_BN_ne_zero (int *) ;
 int TEST_BN_odd (int *) ;
 int TEST_int_eq (int ,int) ;
 int parsedecBN (int **,char*) ;

__attribute__((used)) static int test_dec2bn(void)
{
    BIGNUM *bn = ((void*)0);
    int st = 0;

    if (!TEST_int_eq(parsedecBN(&bn, "0"), 1)
            || !TEST_BN_eq_word(bn, 0)
            || !TEST_BN_eq_zero(bn)
            || !TEST_BN_le_zero(bn)
            || !TEST_BN_ge_zero(bn)
            || !TEST_BN_even(bn))
        goto err;
    BN_free(bn);
    bn = ((void*)0);

    if (!TEST_int_eq(parsedecBN(&bn, "256"), 3)
            || !TEST_BN_eq_word(bn, 256)
            || !TEST_BN_ge_zero(bn)
            || !TEST_BN_gt_zero(bn)
            || !TEST_BN_ne_zero(bn)
            || !TEST_BN_even(bn))
        goto err;
    BN_free(bn);
    bn = ((void*)0);

    if (!TEST_int_eq(parsedecBN(&bn, "-42"), 3)
            || !TEST_BN_abs_eq_word(bn, 42)
            || !TEST_BN_lt_zero(bn)
            || !TEST_BN_le_zero(bn)
            || !TEST_BN_ne_zero(bn)
            || !TEST_BN_even(bn))
        goto err;
    BN_free(bn);
    bn = ((void*)0);

    if (!TEST_int_eq(parsedecBN(&bn, "1"), 1)
            || !TEST_BN_eq_word(bn, 1)
            || !TEST_BN_ne_zero(bn)
            || !TEST_BN_gt_zero(bn)
            || !TEST_BN_ge_zero(bn)
            || !TEST_BN_eq_one(bn)
            || !TEST_BN_odd(bn))
        goto err;
    BN_free(bn);
    bn = ((void*)0);

    if (!TEST_int_eq(parsedecBN(&bn, "-0"), 2)
            || !TEST_BN_eq_zero(bn)
            || !TEST_BN_ge_zero(bn)
            || !TEST_BN_le_zero(bn)
            || !TEST_BN_even(bn))
        goto err;
    BN_free(bn);
    bn = ((void*)0);

    if (!TEST_int_eq(parsedecBN(&bn, "42trailing garbage is ignored"), 2)
            || !TEST_BN_abs_eq_word(bn, 42)
            || !TEST_BN_ge_zero(bn)
            || !TEST_BN_gt_zero(bn)
            || !TEST_BN_ne_zero(bn)
            || !TEST_BN_even(bn))
        goto err;

    st = 1;
 err:
    BN_free(bn);
    return st;
}
