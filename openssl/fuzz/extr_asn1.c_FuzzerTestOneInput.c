
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int BIO ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int * ASN1_ITEM_ptr (int *) ;
 int * ASN1_item_d2i (int *,int const**,size_t,int const*) ;
 int ASN1_item_free (int *,int const*) ;
 int ASN1_item_i2d (int *,unsigned char**,int const*) ;
 int ASN1_item_print (int *,int *,int,int const*,int ) ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_null () ;
 int DH ;
 int DHparams_print ;
 int DO_TEST (int ,int ,int ,int ) ;
 int DO_TEST_NO_PRINT (int ,int ,int ) ;
 int DO_TEST_PRINT_OFFSET (int ,int ,int ,int ) ;
 int DO_TEST_PRINT_PCTX (int ,int ,int ,int ) ;
 int DSA ;
 int DSA_SIG ;
 int DSA_print ;
 int DSAparams_print ;
 int ECDSA_SIG ;
 int ECPKParameters_print ;
 int ECParameters_print ;
 int EC_GROUP ;
 int EC_KEY ;
 int EC_KEY_print ;
 int ERR_clear_error () ;
 int ESS_CERT_ID ;
 int ESS_CERT_ID_V2 ;
 int ESS_ISSUER_SERIAL ;
 int ESS_SIGNING_CERT ;
 int ESS_SIGNING_CERT_V2 ;
 int EVP_PKEY ;
 int EVP_PKEY_print_private ;
 int OPENSSL_free (unsigned char*) ;
 int RSA ;
 int RSA_print ;
 int SSL_SESSION ;
 int SSL_SESSION_print ;
 int TS_ACCURACY ;
 int TS_MSG_IMPRINT ;
 int TS_MSG_IMPRINT_print_bio ;
 int TS_REQ ;
 int TS_REQ_print_bio ;
 int TS_RESP ;
 int TS_RESP_print_bio ;
 int TS_STATUS_INFO ;
 int TS_STATUS_INFO_print_bio ;
 int TS_TST_INFO ;
 int TS_TST_INFO_print_bio ;
 int d2i_AutoPrivateKey ;
 int d2i_DHparams ;
 int d2i_DHxparams ;
 int d2i_DSAPrivateKey ;
 int d2i_DSAPublicKey ;
 int d2i_DSA_SIG ;
 int d2i_DSAparams ;
 int d2i_ECDSA_SIG ;
 int d2i_ECPKParameters ;
 int d2i_ECParameters ;
 int d2i_ECPrivateKey ;
 int d2i_ESS_CERT_ID ;
 int d2i_ESS_CERT_ID_V2 ;
 int d2i_ESS_ISSUER_SERIAL ;
 int d2i_ESS_SIGNING_CERT ;
 int d2i_ESS_SIGNING_CERT_V2 ;
 int d2i_RSAPublicKey ;
 int d2i_SSL_SESSION ;
 int d2i_TS_ACCURACY ;
 int d2i_TS_MSG_IMPRINT ;
 int d2i_TS_REQ ;
 int d2i_TS_RESP ;
 int d2i_TS_STATUS_INFO ;
 int d2i_TS_TST_INFO ;
 int i2d_DHparams ;
 int i2d_DHxparams ;
 int i2d_DSAPrivateKey ;
 int i2d_DSAPublicKey ;
 int i2d_DSA_SIG ;
 int i2d_DSAparams ;
 int i2d_ECDSA_SIG ;
 int i2d_ECPKParameters ;
 int i2d_ECParameters ;
 int i2d_ECPrivateKey ;
 int i2d_ESS_CERT_ID ;
 int i2d_ESS_CERT_ID_V2 ;
 int i2d_ESS_ISSUER_SERIAL ;
 int i2d_ESS_SIGNING_CERT ;
 int i2d_ESS_SIGNING_CERT_V2 ;
 int i2d_PrivateKey ;
 int i2d_RSAPublicKey ;
 int i2d_SSL_SESSION ;
 int i2d_TS_ACCURACY ;
 int i2d_TS_MSG_IMPRINT ;
 int i2d_TS_REQ ;
 int i2d_TS_RESP ;
 int i2d_TS_STATUS_INFO ;
 int i2d_TS_TST_INFO ;
 int ** item_type ;
 int pctx ;

int FuzzerTestOneInput(const uint8_t *buf, size_t len)
{
    int n;


    for (n = 0; item_type[n] != ((void*)0); ++n) {
        const uint8_t *b = buf;
        unsigned char *der = ((void*)0);
        const ASN1_ITEM *i = ASN1_ITEM_ptr(item_type[n]);
        ASN1_VALUE *o = ASN1_item_d2i(((void*)0), &b, len, i);

        if (o != ((void*)0)) {
            BIO *bio = BIO_new(BIO_s_null());

            ASN1_item_print(bio, o, 4, i, pctx);
            BIO_free(bio);
            ASN1_item_i2d(o, &der, i);
            OPENSSL_free(der);
            ASN1_item_free(o, i);
        }
    }


    DO_TEST(TS_REQ, d2i_TS_REQ, i2d_TS_REQ, TS_REQ_print_bio);
    DO_TEST(TS_MSG_IMPRINT, d2i_TS_MSG_IMPRINT, i2d_TS_MSG_IMPRINT, TS_MSG_IMPRINT_print_bio);
    DO_TEST(TS_RESP, d2i_TS_RESP, i2d_TS_RESP, TS_RESP_print_bio);
    DO_TEST(TS_STATUS_INFO, d2i_TS_STATUS_INFO, i2d_TS_STATUS_INFO, TS_STATUS_INFO_print_bio);
    DO_TEST(TS_TST_INFO, d2i_TS_TST_INFO, i2d_TS_TST_INFO, TS_TST_INFO_print_bio);
    DO_TEST_NO_PRINT(TS_ACCURACY, d2i_TS_ACCURACY, i2d_TS_ACCURACY);

    DO_TEST_NO_PRINT(ESS_ISSUER_SERIAL, d2i_ESS_ISSUER_SERIAL, i2d_ESS_ISSUER_SERIAL);
    DO_TEST_NO_PRINT(ESS_CERT_ID, d2i_ESS_CERT_ID, i2d_ESS_CERT_ID);
    DO_TEST_NO_PRINT(ESS_SIGNING_CERT, d2i_ESS_SIGNING_CERT, i2d_ESS_SIGNING_CERT);
    DO_TEST_NO_PRINT(ESS_CERT_ID_V2, d2i_ESS_CERT_ID_V2, i2d_ESS_CERT_ID_V2);
    DO_TEST_NO_PRINT(ESS_SIGNING_CERT_V2, d2i_ESS_SIGNING_CERT_V2, i2d_ESS_SIGNING_CERT_V2);

    DO_TEST(DH, d2i_DHparams, i2d_DHparams, DHparams_print);
    DO_TEST(DH, d2i_DHxparams, i2d_DHxparams, DHparams_print);


    DO_TEST_NO_PRINT(DSA_SIG, d2i_DSA_SIG, i2d_DSA_SIG);
    DO_TEST_PRINT_OFFSET(DSA, d2i_DSAPrivateKey, i2d_DSAPrivateKey, DSA_print);
    DO_TEST_PRINT_OFFSET(DSA, d2i_DSAPublicKey, i2d_DSAPublicKey, DSA_print);
    DO_TEST(DSA, d2i_DSAparams, i2d_DSAparams, DSAparams_print);

    DO_TEST_PRINT_OFFSET(RSA, d2i_RSAPublicKey, i2d_RSAPublicKey, RSA_print);

    DO_TEST_PRINT_OFFSET(EC_GROUP, d2i_ECPKParameters, i2d_ECPKParameters, ECPKParameters_print);
    DO_TEST_PRINT_OFFSET(EC_KEY, d2i_ECPrivateKey, i2d_ECPrivateKey, EC_KEY_print);
    DO_TEST(EC_KEY, d2i_ECParameters, i2d_ECParameters, ECParameters_print);
    DO_TEST_NO_PRINT(ECDSA_SIG, d2i_ECDSA_SIG, i2d_ECDSA_SIG);

    DO_TEST_PRINT_PCTX(EVP_PKEY, d2i_AutoPrivateKey, i2d_PrivateKey, EVP_PKEY_print_private);
    DO_TEST(SSL_SESSION, d2i_SSL_SESSION, i2d_SSL_SESSION, SSL_SESSION_print);

    ERR_clear_error();

    return 0;
}
