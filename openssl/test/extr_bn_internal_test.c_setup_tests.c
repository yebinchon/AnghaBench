
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 int BN_CTX_new () ;
 scalar_t__ OSSL_NELEM (int ) ;
 int TEST_ptr (int ) ;
 int composites ;
 int ctx ;
 int test_bn_small_factors ;
 int test_is_composite_enhanced ;
 int test_is_prime_enhanced ;

int setup_tests(void)
{
    if (!TEST_ptr(ctx = BN_CTX_new()))
        return 0;

    ADD_TEST(test_is_prime_enhanced);
    ADD_ALL_TESTS(test_is_composite_enhanced, (int)OSSL_NELEM(composites));
    ADD_TEST(test_bn_small_factors);

    return 1;
}
