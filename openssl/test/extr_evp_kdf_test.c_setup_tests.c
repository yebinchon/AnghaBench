
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_kdf_get_kdf ;
 int test_kdf_hkdf ;
 int test_kdf_kbkdf_6803_128 ;
 int test_kdf_kbkdf_6803_256 ;
 int test_kdf_kbkdf_8009_prf1 ;
 int test_kdf_kbkdf_8009_prf2 ;
 int test_kdf_krb5kdf ;
 int test_kdf_pbkdf2 ;
 int test_kdf_scrypt ;
 int test_kdf_ss_hash ;
 int test_kdf_ss_hmac ;
 int test_kdf_ss_kmac ;
 int test_kdf_sshkdf ;
 int test_kdf_tls1_prf ;
 int test_kdf_x942_asn1 ;
 int test_kdf_x963 ;

int setup_tests(void)
{
    ADD_TEST(test_kdf_kbkdf_6803_128);
    ADD_TEST(test_kdf_kbkdf_6803_256);
    ADD_TEST(test_kdf_kbkdf_8009_prf1);
    ADD_TEST(test_kdf_kbkdf_8009_prf2);
    ADD_TEST(test_kdf_get_kdf);
    ADD_TEST(test_kdf_tls1_prf);
    ADD_TEST(test_kdf_hkdf);
    ADD_TEST(test_kdf_pbkdf2);

    ADD_TEST(test_kdf_scrypt);

    ADD_TEST(test_kdf_ss_hash);
    ADD_TEST(test_kdf_ss_hmac);
    ADD_TEST(test_kdf_ss_kmac);
    ADD_TEST(test_kdf_sshkdf);
    ADD_TEST(test_kdf_x963);

    ADD_TEST(test_kdf_x942_asn1);

    ADD_TEST(test_kdf_krb5kdf);
    return 1;
}
