
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_BITS2 ;
 int BN_FLG_CONSTTIME ;
 int BN_bntest_rand (int *,int,int,int ) ;
 int BN_consttime_swap (int,int *,int *,int) ;
 int * BN_copy (int *,int *) ;
 int BN_free (int *) ;
 int BN_get_flags (int *,int ) ;
 int * BN_new () ;
 int BN_num_bits (int *) ;
 int BN_set_flags (int *,int ) ;
 int BN_swap (int *,int *) ;
 int TEST_false (int ) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int equalBN (char*,int *,int *) ;

__attribute__((used)) static int test_swap(void)
{
    BIGNUM *a = ((void*)0), *b = ((void*)0), *c = ((void*)0), *d = ((void*)0);
    int top, cond, st = 0;

    if (!TEST_ptr(a = BN_new())
            || !TEST_ptr(b = BN_new())
            || !TEST_ptr(c = BN_new())
            || !TEST_ptr(d = BN_new()))
        goto err;

    if (!(TEST_true(BN_bntest_rand(a, 1024, 1, 0))
            && TEST_true(BN_bntest_rand(b, 1024, 1, 0))
            && TEST_ptr(BN_copy(c, a))
            && TEST_ptr(BN_copy(d, b))))
        goto err;
    top = BN_num_bits(a) / BN_BITS2;


    BN_swap(a, b);
    if (!equalBN("swap", a, d)
            || !equalBN("swap", b, c))
        goto err;


    cond = 1;
    BN_consttime_swap(cond, a, b, top);
    if (!equalBN("cswap true", a, c)
            || !equalBN("cswap true", b, d))
        goto err;


    cond = 0;
    BN_consttime_swap(cond, a, b, top);
    if (!equalBN("cswap false", a, c)
            || !equalBN("cswap false", b, d))
        goto err;


    BN_set_flags(a, BN_FLG_CONSTTIME);

    BN_swap(a, b);
    if (!equalBN("swap, flags", a, d)
            || !equalBN("swap, flags", b, c)
            || !TEST_true(BN_get_flags(b, BN_FLG_CONSTTIME))
            || !TEST_false(BN_get_flags(a, BN_FLG_CONSTTIME)))
        goto err;

    cond = 1;
    BN_consttime_swap(cond, a, b, top);
    if (!equalBN("cswap true, flags", a, c)
            || !equalBN("cswap true, flags", b, d)
            || !TEST_true(BN_get_flags(a, BN_FLG_CONSTTIME))
            || !TEST_false(BN_get_flags(b, BN_FLG_CONSTTIME)))
        goto err;

    cond = 0;
    BN_consttime_swap(cond, a, b, top);
    if (!equalBN("cswap false, flags", a, c)
            || !equalBN("cswap false, flags", b, d)
            || !TEST_true(BN_get_flags(a, BN_FLG_CONSTTIME))
            || !TEST_false(BN_get_flags(b, BN_FLG_CONSTTIME)))
        goto err;

    st = 1;
 err:
    BN_free(a);
    BN_free(b);
    BN_free(c);
    BN_free(d);
    return st;
}
