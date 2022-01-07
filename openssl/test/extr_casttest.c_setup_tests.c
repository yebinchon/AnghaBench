
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int ADD_TEST (int ) ;
 int OSSL_NELEM (int ) ;
 int cast_test_iterations ;
 int cast_test_vector ;
 int k_len ;

int setup_tests(void)
{

    ADD_ALL_TESTS(cast_test_vector, OSSL_NELEM(k_len));
    ADD_TEST(cast_test_iterations);

    return 1;
}
