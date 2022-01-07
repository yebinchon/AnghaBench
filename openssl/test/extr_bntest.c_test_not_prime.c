
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_check_prime (int *,int ,int *) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_word (int *,int ) ;
 int TEST_false (int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int ctx ;
 int * not_primes ;

__attribute__((used)) static int test_not_prime(int i)
{
    int ret = 0;
    BIGNUM *r = ((void*)0);
    int trial;

    if (!TEST_ptr(r = BN_new()))
        goto err;

    for (trial = 0; trial <= 1; ++trial) {
        if (!TEST_true(BN_set_word(r, not_primes[i]))
                || !TEST_false(BN_check_prime(r, ctx, ((void*)0))))
            goto err;
    }

    ret = 1;
 err:
    BN_free(r);
    return ret;
}
