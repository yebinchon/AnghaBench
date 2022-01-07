
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_generate_prime_ex (int *,int,int,int *,int *,int *) ;
 int * BN_new () ;
 int BN_num_bits (int *) ;
 int TEST_false (int ) ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;

__attribute__((used)) static int test_smallsafeprime(int kBits)
{
    BIGNUM *r;
    int st = 0;

    if (!TEST_ptr(r = BN_new()))
        goto err;

    if (kBits <= 5 && kBits != 3) {
        if (!TEST_false(BN_generate_prime_ex(r, kBits, 1,
                                             ((void*)0), ((void*)0), ((void*)0))))
            goto err;
    } else {
        if (!TEST_true(BN_generate_prime_ex(r, kBits, 1,
                                            ((void*)0), ((void*)0), ((void*)0)))
                || !TEST_int_eq(BN_num_bits(r), kBits))
            goto err;
    }

    st = 1;
 err:
    BN_free(r);
    return st;
}
