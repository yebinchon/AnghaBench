
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int out ;
typedef int len ;
typedef int expected ;
typedef int OSSL_PARAM ;
typedef int EVP_KDF_CTX ;


 int EVP_KDF_CTRL_SET_ITER ;
 int EVP_KDF_CTRL_SET_PBKDF2_PKCS5_MODE ;
 int EVP_KDF_CTRL_SET_SALT ;
 int EVP_KDF_CTX_free (int *) ;
 int EVP_KDF_CTX_set_params (int *,int *) ;
 int EVP_KDF_ctrl (int *,int ,...) ;
 int EVP_KDF_derive (int *,unsigned char*,int) ;
 int OSSL_KDF_NAME_PBKDF2 ;
 int OSSL_KDF_PARAM_DIGEST ;
 int OSSL_KDF_PARAM_ITER ;
 int OSSL_KDF_PARAM_PASSWORD ;
 int OSSL_KDF_PARAM_PKCS5 ;
 int OSSL_KDF_PARAM_SALT ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_int (int ,int*) ;
 void* OSSL_PARAM_construct_octet_string (int ,unsigned char*,int) ;
 int OSSL_PARAM_construct_uint (int ,unsigned int*) ;
 int OSSL_PARAM_construct_utf8_string (int ,char*,int) ;
 size_t SIZE_MAX ;
 scalar_t__ TEST_int_eq (int ,int ) ;
 scalar_t__ TEST_int_gt (int ,int ) ;
 int TEST_mem_eq (unsigned char*,int,unsigned char const*,int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int * get_kdfbyname (int ) ;

__attribute__((used)) static int test_kdf_pbkdf2(void)
{
    int ret = 0;
    EVP_KDF_CTX *kctx;
    unsigned char out[25];
    size_t len = 0;
    unsigned int iterations = 4096;
    int mode = 0;
    OSSL_PARAM params[6], *p = params;
    const unsigned char expected[sizeof(out)] = {
        0x34, 0x8c, 0x89, 0xdb, 0xcb, 0xd3, 0x2b, 0x2f,
        0x32, 0xd8, 0x14, 0xb8, 0x11, 0x6e, 0x84, 0xcf,
        0x2b, 0x17, 0x34, 0x7e, 0xbc, 0x18, 0x00, 0x18,
        0x1c
    };

    if (sizeof(len) > 32)
        len = SIZE_MAX;

    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_PASSWORD,
                                             (unsigned char *)
                                                "passwordPASSWORDpassword", 24);
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_SALT,
                                             (unsigned char *)
                                                "saltSALTsaltSALTsaltSALTsaltSALTsalt",
                                                36);
    *p++ = OSSL_PARAM_construct_uint(OSSL_KDF_PARAM_ITER, &iterations);
    *p++ = OSSL_PARAM_construct_utf8_string(OSSL_KDF_PARAM_DIGEST,
                                             (char *)"sha256", 7);
    *p++ = OSSL_PARAM_construct_int(OSSL_KDF_PARAM_PKCS5, &mode);
    *p = OSSL_PARAM_construct_end();

    if (!TEST_ptr(kctx = get_kdfbyname(OSSL_KDF_NAME_PBKDF2))
        || !TEST_true(EVP_KDF_CTX_set_params(kctx, params))
        || !TEST_int_gt(EVP_KDF_derive(kctx, out, sizeof(out)), 0)
        || !TEST_mem_eq(out, sizeof(out), expected, sizeof(expected))
        || !TEST_true(EVP_KDF_CTX_set_params(kctx, params))

        || !TEST_int_eq(EVP_KDF_derive(kctx, out, 112 / 8 - 1), 0)

        || (len != 0 && !TEST_int_eq(EVP_KDF_derive(kctx, out, len), 0)))
        goto err;
    ret = 1;
err:
    EVP_KDF_CTX_free(kctx);
    return ret;
}
