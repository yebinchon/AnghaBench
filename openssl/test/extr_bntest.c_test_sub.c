
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_add (int *,int *,int *) ;
 int BN_add_word (int *,int) ;
 int BN_bntest_rand (int *,int,int ,int ) ;
 int * BN_copy (int *,int *) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_bit (int *,int) ;
 int BN_set_negative (int *,int ) ;
 int BN_sub (int *,int *,int *) ;
 int NUM0 ;
 int NUM1 ;
 scalar_t__ TEST_BN_eq_zero (int *) ;
 scalar_t__ TEST_int_ne (int ,int ) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int rand_neg () ;

__attribute__((used)) static int test_sub(void)
{
    BIGNUM *a = ((void*)0), *b = ((void*)0), *c = ((void*)0);
    int i, st = 0;

    if (!TEST_ptr(a = BN_new())
            || !TEST_ptr(b = BN_new())
            || !TEST_ptr(c = BN_new()))
        goto err;

    for (i = 0; i < NUM0 + NUM1; i++) {
        if (i < NUM1) {
            if (!(TEST_true(BN_bntest_rand(a, 512, 0, 0)))
                    && TEST_ptr(BN_copy(b, a))
                    && TEST_int_ne(BN_set_bit(a, i), 0)
                    && TEST_true(BN_add_word(b, i)))
                goto err;
        } else {
            if (!TEST_true(BN_bntest_rand(b, 400 + i - NUM1, 0, 0)))
                goto err;
            BN_set_negative(a, rand_neg());
            BN_set_negative(b, rand_neg());
        }
        if (!(TEST_true(BN_sub(c, a, b))
                && TEST_true(BN_add(c, c, b))
                && TEST_true(BN_sub(c, c, a))
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
