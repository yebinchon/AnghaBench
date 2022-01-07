
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_PRIMETEST_PROBABLY_PRIME ;
 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_word (int *,int) ;
 scalar_t__ TEST_int_eq (int,int ) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int bn_miller_rabin_is_prime (int *,int,int ,int *,int,int*) ;
 int ctx ;

__attribute__((used)) static int test_is_prime_enhanced(void)
{
    int ret;
    int status = 0;
    BIGNUM *bn = ((void*)0);

    ret = TEST_ptr(bn = BN_new())

          && TEST_true(BN_set_word(bn, 11))

          && TEST_true(bn_miller_rabin_is_prime(bn, 10, ctx, ((void*)0), 1, &status))
          && TEST_int_eq(status, BN_PRIMETEST_PROBABLY_PRIME);
    BN_free(bn);
    return ret;
}
