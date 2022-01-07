
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int ADD_TEST (int ) ;
 int OSSL_NELEM (int ) ;
 int signed_test_values ;
 int test_32values ;
 int test_64values ;
 int test_8values ;
 int test_binops ;
 int test_binops_8 ;
 int test_binops_s ;
 int test_is_zero ;
 int test_is_zero_32 ;
 int test_is_zero_8 ;
 int test_is_zero_s ;
 int test_signed ;
 int test_sizeofs ;
 int test_values ;
 int test_values_32 ;
 int test_values_64 ;
 int test_values_8 ;
 int test_values_s ;

int setup_tests(void)
{
    ADD_TEST(test_sizeofs);
    ADD_ALL_TESTS(test_is_zero, OSSL_NELEM(test_values));
    ADD_ALL_TESTS(test_is_zero_8, OSSL_NELEM(test_values_8));
    ADD_ALL_TESTS(test_is_zero_32, OSSL_NELEM(test_values_32));
    ADD_ALL_TESTS(test_is_zero_s, OSSL_NELEM(test_values_s));
    ADD_ALL_TESTS(test_binops, OSSL_NELEM(test_values));
    ADD_ALL_TESTS(test_binops_8, OSSL_NELEM(test_values_8));
    ADD_ALL_TESTS(test_binops_s, OSSL_NELEM(test_values_s));
    ADD_ALL_TESTS(test_signed, OSSL_NELEM(signed_test_values));
    ADD_ALL_TESTS(test_8values, OSSL_NELEM(test_values_8));
    ADD_ALL_TESTS(test_32values, OSSL_NELEM(test_values_32));
    ADD_ALL_TESTS(test_64values, OSSL_NELEM(test_values_64));
    return 1;
}
