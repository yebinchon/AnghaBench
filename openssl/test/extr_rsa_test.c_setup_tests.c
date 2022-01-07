
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int OSSL_NELEM (int ) ;
 int rsa_security_bits_cases ;
 int test_rsa_oaep ;
 int test_rsa_pkcs1 ;
 int test_rsa_security_bit ;
 int test_rsa_sslv23 ;

int setup_tests(void)
{
    ADD_ALL_TESTS(test_rsa_pkcs1, 3);
    ADD_ALL_TESTS(test_rsa_sslv23, 3);
    ADD_ALL_TESTS(test_rsa_oaep, 3);
    ADD_ALL_TESTS(test_rsa_security_bit, OSSL_NELEM(rsa_security_bits_cases));
    return 1;
}
