
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_kdf_hkdf ;
 int test_kdf_scrypt ;
 int test_kdf_tls1_prf ;

int setup_tests(void)
{
    ADD_TEST(test_kdf_tls1_prf);
    ADD_TEST(test_kdf_hkdf);

    ADD_TEST(test_kdf_scrypt);

    return 1;
}
