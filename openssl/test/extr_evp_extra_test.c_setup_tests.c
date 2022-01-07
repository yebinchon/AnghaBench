
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 int EVP_PKEY_meth_add0 (int ) ;
 int EVP_PKEY_meth_new (int,int ) ;
 int EVP_PKEY_meth_set_check (int ,int ) ;
 int EVP_PKEY_meth_set_param_check (int ,int ) ;
 int EVP_PKEY_meth_set_public_check (int ,int ) ;
 int OSSL_NELEM (int ) ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr (int ) ;
 int custom_pmeth ;
 int ec_der_pub_keys ;
 int keycheckdata ;
 int keydata ;
 int keys ;
 int pkey_custom_check ;
 int pkey_custom_param_check ;
 int pkey_custom_pub_check ;
 int test_EVP_DigestSignInit ;
 int test_EVP_DigestVerifyInit ;
 int test_EVP_Enveloped ;
 int test_EVP_PKCS82PKEY ;
 int test_EVP_PKEY_CTX_get_set_params ;
 int test_EVP_PKEY_check ;
 int test_EVP_SM2 ;
 int test_EVP_SM2_verify ;
 int test_HKDF ;
 int test_X509_PUBKEY_inplace ;
 int test_d2i_AutoPrivateKey ;
 int test_invalide_ec_char2_pub_range_decode ;
 int test_set_get_raw_keys ;

int setup_tests(void)
{
    ADD_ALL_TESTS(test_EVP_DigestSignInit, 4);
    ADD_TEST(test_EVP_DigestVerifyInit);
    ADD_TEST(test_EVP_Enveloped);
    ADD_ALL_TESTS(test_d2i_AutoPrivateKey, OSSL_NELEM(keydata));

    ADD_TEST(test_EVP_PKCS82PKEY);


    ADD_TEST(test_EVP_SM2);
    ADD_TEST(test_EVP_SM2_verify);

    ADD_ALL_TESTS(test_set_get_raw_keys, OSSL_NELEM(keys));
    custom_pmeth = EVP_PKEY_meth_new(0xdefaced, 0);
    if (!TEST_ptr(custom_pmeth))
        return 0;
    EVP_PKEY_meth_set_check(custom_pmeth, pkey_custom_check);
    EVP_PKEY_meth_set_public_check(custom_pmeth, pkey_custom_pub_check);
    EVP_PKEY_meth_set_param_check(custom_pmeth, pkey_custom_param_check);
    if (!TEST_int_eq(EVP_PKEY_meth_add0(custom_pmeth), 1))
        return 0;
    ADD_ALL_TESTS(test_EVP_PKEY_check, OSSL_NELEM(keycheckdata));
    ADD_TEST(test_HKDF);

    ADD_TEST(test_X509_PUBKEY_inplace);
    ADD_ALL_TESTS(test_invalide_ec_char2_pub_range_decode,
                  OSSL_NELEM(ec_der_pub_keys));


    ADD_TEST(test_EVP_PKEY_CTX_get_set_params);

    return 1;
}
