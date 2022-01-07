
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int ADD_TEST (int ) ;
 int OSSL_NELEM (int ) ;
 int test_siphash ;
 int test_siphash_basic ;
 int tests ;

int setup_tests(void)
{
    ADD_TEST(test_siphash_basic);
    ADD_ALL_TESTS(test_siphash, OSSL_NELEM(tests));
    return 1;
}
