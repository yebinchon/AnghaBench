
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 scalar_t__ OSSL_NELEM (int ) ;
 int keygen_size ;
 int test_check_crt_components ;
 int test_check_prime_factor ;
 int test_check_prime_factor_range ;
 int test_check_private_exponent ;
 int test_check_private_key ;
 int test_check_public_exponent ;
 int test_check_public_key ;
 int test_fips1864_keygen_kat ;
 int test_invalid_keypair ;
 int test_pq_diff ;
 int test_sp80056b_keygen ;

int setup_tests(void)
{
    ADD_TEST(test_check_public_exponent);
    ADD_TEST(test_check_prime_factor_range);
    ADD_TEST(test_check_prime_factor);
    ADD_TEST(test_check_private_exponent);
    ADD_TEST(test_check_crt_components);
    ADD_TEST(test_check_private_key);
    ADD_TEST(test_check_public_key);
    ADD_TEST(test_invalid_keypair);
    ADD_TEST(test_pq_diff);
    ADD_TEST(test_fips1864_keygen_kat);
    ADD_ALL_TESTS(test_sp80056b_keygen, (int)OSSL_NELEM(keygen_size));
    return 1;
}
