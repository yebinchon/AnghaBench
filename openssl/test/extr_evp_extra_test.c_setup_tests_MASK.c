#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  custom_pmeth ; 
 int /*<<< orphan*/  ec_der_pub_keys ; 
 int /*<<< orphan*/  keycheckdata ; 
 int /*<<< orphan*/  keydata ; 
 int /*<<< orphan*/  keys ; 
 int /*<<< orphan*/  pkey_custom_check ; 
 int /*<<< orphan*/  pkey_custom_param_check ; 
 int /*<<< orphan*/  pkey_custom_pub_check ; 
 int /*<<< orphan*/  test_EVP_DigestSignInit ; 
 int /*<<< orphan*/  test_EVP_DigestVerifyInit ; 
 int /*<<< orphan*/  test_EVP_Enveloped ; 
 int /*<<< orphan*/  test_EVP_PKCS82PKEY ; 
 int /*<<< orphan*/  test_EVP_PKEY_CTX_get_set_params ; 
 int /*<<< orphan*/  test_EVP_PKEY_check ; 
 int /*<<< orphan*/  test_EVP_SM2 ; 
 int /*<<< orphan*/  test_EVP_SM2_verify ; 
 int /*<<< orphan*/  test_HKDF ; 
 int /*<<< orphan*/  test_X509_PUBKEY_inplace ; 
 int /*<<< orphan*/  test_d2i_AutoPrivateKey ; 
 int /*<<< orphan*/  test_invalide_ec_char2_pub_range_decode ; 
 int /*<<< orphan*/  test_set_get_raw_keys ; 

int FUNC10(void)
{
    FUNC0(test_EVP_DigestSignInit, 4);
    FUNC1(test_EVP_DigestVerifyInit);
    FUNC1(test_EVP_Enveloped);
    FUNC0(test_d2i_AutoPrivateKey, FUNC7(keydata));
#ifndef OPENSSL_NO_EC
    FUNC1(test_EVP_PKCS82PKEY);
#endif
#if !defined(OPENSSL_NO_SM2) && !defined(FIPS_MODE)
    FUNC1(test_EVP_SM2);
    FUNC1(test_EVP_SM2_verify);
#endif
    FUNC0(test_set_get_raw_keys, FUNC7(keys));
    custom_pmeth = FUNC3(0xdefaced, 0);
    if (!FUNC9(custom_pmeth))
        return 0;
    FUNC4(custom_pmeth, pkey_custom_check);
    FUNC6(custom_pmeth, pkey_custom_pub_check);
    FUNC5(custom_pmeth, pkey_custom_param_check);
    if (!FUNC8(FUNC2(custom_pmeth), 1))
        return 0;
    FUNC0(test_EVP_PKEY_check, FUNC7(keycheckdata));
    FUNC1(test_HKDF);
#ifndef OPENSSL_NO_EC
    FUNC1(test_X509_PUBKEY_inplace);
    FUNC0(test_invalide_ec_char2_pub_range_decode,
                  FUNC7(ec_der_pub_keys));
#endif
#ifndef OPENSSL_NO_DSA
    FUNC1(test_EVP_PKEY_CTX_get_set_params);
#endif
    return 1;
}