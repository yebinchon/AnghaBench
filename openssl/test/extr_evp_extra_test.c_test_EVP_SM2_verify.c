
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int signature ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_mem_buf (char const*,int ) ;
 int EVP_DigestVerifyFinal (int *,int const*,int) ;
 int EVP_DigestVerifyInit (int *,int *,int ,int *,int *) ;
 int EVP_DigestVerifyUpdate (int *,char const*,int ) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_CTX_set_pkey_ctx (int *,int *) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 int EVP_PKEY_CTX_set1_id (int *,int const*,int ) ;
 int EVP_PKEY_SM2 ;
 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_set_alias_type (int *,int ) ;
 int EVP_sm3 () ;
 int * PEM_read_bio_PUBKEY (int *,int *,int *,int *) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int test_EVP_SM2_verify(void)
{

    const char *pubkey =
       "-----BEGIN PUBLIC KEY-----\n"
       "MIIBMzCB7AYHKoZIzj0CATCB4AIBATAsBgcqhkjOPQEBAiEAhULWnkwETxjouSQ1\n"
       "v2/33kVyg5FcRVF9ci7biwjx38MwRAQgeHlotPoyw/0kF4Quc7v+/y88hItoMdfg\n"
       "7GUiizk35JgEIGPkxtOyOwyEnPhCQUhL/kj2HVmlsWugbm4S0donxSSaBEEEQh3r\n"
       "1hti6rZ0ZDTrw8wxXjIiCzut1QvcTE5sFH/t1D0GgFEry7QsB9RzSdIVO3DE5df9\n"
       "/L+jbqGoWEG55G4JogIhAIVC1p5MBE8Y6LkkNb9v990pdyBjBIVijVrnTufDLnm3\n"
       "AgEBA0IABArkx3mKoPEZRxvuEYJb5GICu3nipYRElel8BP9N8lSKfAJA+I8c1OFj\n"
       "Uqc8F7fxbwc1PlOhdtaEqf4Ma7eY6Fc=\n"
       "-----END PUBLIC KEY-----\n";

    const char *msg = "message digest";
    const char *id = "ALICE123@YAHOO.COM";

    const uint8_t signature[] = {
       0x30, 0x44, 0x02, 0x20,

       0x40, 0xF1, 0xEC, 0x59, 0xF7, 0x93, 0xD9, 0xF4, 0x9E, 0x09, 0xDC,
       0xEF, 0x49, 0x13, 0x0D, 0x41, 0x94, 0xF7, 0x9F, 0xB1, 0xEE, 0xD2,
       0xCA, 0xA5, 0x5B, 0xAC, 0xDB, 0x49, 0xC4, 0xE7, 0x55, 0xD1,

       0x02, 0x20,

       0x6F, 0xC6, 0xDA, 0xC3, 0x2C, 0x5D, 0x5C, 0xF1, 0x0C, 0x77, 0xDF,
       0xB2, 0x0F, 0x7C, 0x2E, 0xB6, 0x67, 0xA4, 0x57, 0x87, 0x2F, 0xB0,
       0x9E, 0xC5, 0x63, 0x27, 0xA6, 0x7E, 0xC7, 0xDE, 0xEB, 0xE7
    };

    int rc = 0;
    BIO *bio = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    EVP_MD_CTX *mctx = ((void*)0);
    EVP_PKEY_CTX *pctx = ((void*)0);

    bio = BIO_new_mem_buf(pubkey, strlen(pubkey));
    if (!TEST_true(bio != ((void*)0)))
        goto done;

    pkey = PEM_read_bio_PUBKEY(bio, ((void*)0), ((void*)0), ((void*)0));
    if (!TEST_true(pkey != ((void*)0)))
        goto done;

    if (!TEST_true(EVP_PKEY_set_alias_type(pkey, EVP_PKEY_SM2)))
        goto done;

    if (!TEST_ptr(mctx = EVP_MD_CTX_new()))
        goto done;

    if (!TEST_ptr(pctx = EVP_PKEY_CTX_new(pkey, ((void*)0))))
        goto done;

    if (!TEST_int_gt(EVP_PKEY_CTX_set1_id(pctx, (const uint8_t *)id,
                                          strlen(id)), 0))
        goto done;

    EVP_MD_CTX_set_pkey_ctx(mctx, pctx);

    if (!TEST_true(EVP_DigestVerifyInit(mctx, ((void*)0), EVP_sm3(), ((void*)0), pkey)))
        goto done;

    if (!TEST_true(EVP_DigestVerifyUpdate(mctx, msg, strlen(msg))))
        goto done;

    if (!TEST_true(EVP_DigestVerifyFinal(mctx, signature, sizeof(signature))))
        goto done;
    rc = 1;

 done:
    BIO_free(bio);
    EVP_PKEY_free(pkey);
    EVP_PKEY_CTX_free(pctx);
    EVP_MD_CTX_free(mctx);
    return rc;
}
