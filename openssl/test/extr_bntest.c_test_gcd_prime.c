
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_gcd (int *,int *,int *,int ) ;
 int BN_generate_prime_ex (int *,int,int ,int *,int *,int *) ;
 int BN_is_one (int *) ;
 int * BN_new () ;
 int NUM0 ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int ctx ;

__attribute__((used)) static int test_gcd_prime(void)
{
    BIGNUM *a = ((void*)0), *b = ((void*)0), *gcd = ((void*)0);
    int i, st = 0;

    if (!TEST_ptr(a = BN_new())
            || !TEST_ptr(b = BN_new())
            || !TEST_ptr(gcd = BN_new()))
        goto err;

    if (!TEST_true(BN_generate_prime_ex(a, 1024, 0, ((void*)0), ((void*)0), ((void*)0))))
            goto err;
    for (i = 0; i < NUM0; i++) {
        if (!TEST_true(BN_generate_prime_ex(b, 1024, 0,
                                            ((void*)0), ((void*)0), ((void*)0)))
                || !TEST_true(BN_gcd(gcd, a, b, ctx))
                || !TEST_true(BN_is_one(gcd)))
            goto err;
    }

    st = 1;
 err:
    BN_free(a);
    BN_free(b);
    BN_free(gcd);
    return st;
}
