
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int OSSL_NELEM (int ) ;
 int aes_cts128_vectors ;
 int gcm128_vectors ;
 int test_aes_cts128 ;
 int test_aes_cts128_nist ;
 int test_gcm128 ;

int setup_tests(void)
{
    ADD_ALL_TESTS(test_aes_cts128, OSSL_NELEM(aes_cts128_vectors));
    ADD_ALL_TESTS(test_aes_cts128_nist, OSSL_NELEM(aes_cts128_vectors));
    ADD_ALL_TESTS(test_gcm128, OSSL_NELEM(gcm128_vectors));
    return 1;
}
