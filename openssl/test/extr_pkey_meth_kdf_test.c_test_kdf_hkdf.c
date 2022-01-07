
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int out ;
typedef int expected ;
typedef int EVP_PKEY_CTX ;


 scalar_t__ EVP_PKEY_CTX_add1_hkdf_info (int *,char*,int) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new_id (int ,int *) ;
 scalar_t__ EVP_PKEY_CTX_set1_hkdf_key (int *,char*,int) ;
 scalar_t__ EVP_PKEY_CTX_set1_hkdf_salt (int *,char*,int) ;
 scalar_t__ EVP_PKEY_CTX_set_hkdf_md (int *,int ) ;
 int EVP_PKEY_HKDF ;
 scalar_t__ EVP_PKEY_derive (int *,unsigned char*,size_t*) ;
 scalar_t__ EVP_PKEY_derive_init (int *) ;
 int EVP_sha256 () ;
 int TEST_error (char*) ;
 int TEST_mem_eq (unsigned char*,int,unsigned char const*,int) ;

__attribute__((used)) static int test_kdf_hkdf(void)
{
    int ret = 0;
    EVP_PKEY_CTX *pctx;
    unsigned char out[10];
    size_t outlen = sizeof(out);

    if ((pctx = EVP_PKEY_CTX_new_id(EVP_PKEY_HKDF, ((void*)0))) == ((void*)0)) {
        TEST_error("EVP_PKEY_HKDF");
        goto err;
    }
    if (EVP_PKEY_derive_init(pctx) <= 0) {
        TEST_error("EVP_PKEY_derive_init");
        goto err;
    }
    if (EVP_PKEY_CTX_set_hkdf_md(pctx, EVP_sha256()) <= 0) {
        TEST_error("EVP_PKEY_CTX_set_hkdf_md");
        goto err;
    }
    if (EVP_PKEY_CTX_set1_hkdf_salt(pctx, "salt", 4) <= 0) {
        TEST_error("EVP_PKEY_CTX_set1_hkdf_salt");
        goto err;
    }
    if (EVP_PKEY_CTX_set1_hkdf_key(pctx, "secret", 6) <= 0) {
        TEST_error("EVP_PKEY_CTX_set1_hkdf_key");
        goto err;
    }
    if (EVP_PKEY_CTX_add1_hkdf_info(pctx, "label", 5) <= 0) {
        TEST_error("EVP_PKEY_CTX_set1_hkdf_info");
        goto err;
    }
    if (EVP_PKEY_derive(pctx, out, &outlen) <= 0) {
        TEST_error("EVP_PKEY_derive");
        goto err;
    }

    {
        const unsigned char expected[sizeof(out)] = {
            0x2a, 0xc4, 0x36, 0x9f, 0x52, 0x59, 0x96, 0xf8, 0xde, 0x13
        };
        if (!TEST_mem_eq(out, sizeof(out), expected, sizeof(expected))) {
            goto err;
        }
    }
    ret = 1;
err:
    EVP_PKEY_CTX_free(pctx);
    return ret;
}
