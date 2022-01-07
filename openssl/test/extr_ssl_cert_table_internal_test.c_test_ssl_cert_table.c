
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_PKEY_DSA ;
 int EVP_PKEY_EC ;
 int EVP_PKEY_ED25519 ;
 int EVP_PKEY_ED448 ;
 int EVP_PKEY_RSA ;
 int NID_id_GostR3410_2001 ;
 int NID_id_GostR3410_2012_256 ;
 int NID_id_GostR3410_2012_512 ;
 int OSSL_NELEM (int ) ;
 int SSL_PKEY_DSA_SIGN ;
 int SSL_PKEY_ECC ;
 int SSL_PKEY_ED25519 ;
 int SSL_PKEY_ED448 ;
 int SSL_PKEY_GOST01 ;
 int SSL_PKEY_GOST12_256 ;
 int SSL_PKEY_GOST12_512 ;
 int SSL_PKEY_NUM ;
 int SSL_PKEY_RSA ;
 int SSL_aDSS ;
 int SSL_aECDSA ;
 int SSL_aGOST01 ;
 int SSL_aGOST12 ;
 int SSL_aRSA ;
 int TEST_size_t_eq (int ,int ) ;
 int ssl_cert_info ;
 int test_cert_table (int ,int ,int ) ;

__attribute__((used)) static int test_ssl_cert_table(void)
{
    TEST_size_t_eq(OSSL_NELEM(ssl_cert_info), SSL_PKEY_NUM);
    if (!test_cert_table(EVP_PKEY_RSA, SSL_aRSA, SSL_PKEY_RSA))
        return 0;
    if (!test_cert_table(EVP_PKEY_DSA, SSL_aDSS, SSL_PKEY_DSA_SIGN))
        return 0;
    if (!test_cert_table(EVP_PKEY_EC, SSL_aECDSA, SSL_PKEY_ECC))
        return 0;
    if (!test_cert_table(NID_id_GostR3410_2001, SSL_aGOST01, SSL_PKEY_GOST01))
        return 0;
    if (!test_cert_table(NID_id_GostR3410_2012_256, SSL_aGOST12,
                         SSL_PKEY_GOST12_256))
        return 0;
    if (!test_cert_table(NID_id_GostR3410_2012_512, SSL_aGOST12,
                         SSL_PKEY_GOST12_512))
        return 0;
    if (!test_cert_table(EVP_PKEY_ED25519, SSL_aECDSA, SSL_PKEY_ED25519))
        return 0;
    if (!test_cert_table(EVP_PKEY_ED448, SSL_aECDSA, SSL_PKEY_ED448))
        return 0;

    return 1;
}
