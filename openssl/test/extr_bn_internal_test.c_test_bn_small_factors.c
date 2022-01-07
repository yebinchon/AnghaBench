
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prime_t ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_mul_word (int *,int) ;
 int * BN_new () ;
 int BN_set_word (int *,int) ;
 int NUMPRIMES ;
 int TEST_BN_eq (int ,int *) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int bn_get0_small_factors () ;
 int* primes ;

__attribute__((used)) static int test_bn_small_factors(void)
{
    int ret = 0, i;
    BIGNUM *b = ((void*)0);

    if (!(TEST_ptr(b = BN_new()) && TEST_true(BN_set_word(b, 3))))
        goto err;

    for (i = 1; i < NUMPRIMES; i++) {
        prime_t p = primes[i];
        if (p > 3 && p <= 751 && !BN_mul_word(b, p))
            goto err;
        if (p > 751)
            break;
    }
    ret = TEST_BN_eq(bn_get0_small_factors(), b);
err:
    BN_free(b);
    return ret;
}
