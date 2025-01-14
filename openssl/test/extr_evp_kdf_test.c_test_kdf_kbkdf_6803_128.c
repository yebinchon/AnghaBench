
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int result ;
typedef int outputs ;
typedef int iv ;
typedef int input_key ;
typedef int constants ;
typedef int OSSL_PARAM ;
typedef int EVP_KDF_CTX ;


 int EVP_KDF_CTX_free (int *) ;
 int EVP_KDF_CTX_set_params (int *,int *) ;
 int EVP_KDF_derive (int *,unsigned char*,int) ;
 int OSSL_KDF_PARAM_CIPHER ;
 int OSSL_KDF_PARAM_KEY ;
 int OSSL_KDF_PARAM_MAC ;
 int OSSL_KDF_PARAM_MODE ;
 int OSSL_KDF_PARAM_SALT ;
 int OSSL_KDF_PARAM_SEED ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_octet_string (int ,unsigned char*,int) ;
 int OSSL_PARAM_construct_utf8_string (int ,char*,int ) ;
 scalar_t__ TEST_int_gt (int ,int ) ;
 scalar_t__ TEST_mem_eq (unsigned char*,int,unsigned char*,int) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int * get_kdfbyname (char*) ;

__attribute__((used)) static int test_kdf_kbkdf_6803_128(void)
{
    int ret = 0, i, p;
    EVP_KDF_CTX *kctx;
    OSSL_PARAM params[7];
    static unsigned char input_key[] = {
        0x57, 0xD0, 0x29, 0x72, 0x98, 0xFF, 0xD9, 0xD3,
        0x5D, 0xE5, 0xA4, 0x7F, 0xB4, 0xBD, 0xE2, 0x4B,
    };
    static unsigned char constants[][5] = {
        { 0x00, 0x00, 0x00, 0x02, 0x99 },
        { 0x00, 0x00, 0x00, 0x02, 0xaa },
        { 0x00, 0x00, 0x00, 0x02, 0x55 },
    };
    static unsigned char outputs[][16] = {
        {0xD1, 0x55, 0x77, 0x5A, 0x20, 0x9D, 0x05, 0xF0,
         0x2B, 0x38, 0xD4, 0x2A, 0x38, 0x9E, 0x5A, 0x56},
        {0x64, 0xDF, 0x83, 0xF8, 0x5A, 0x53, 0x2F, 0x17,
         0x57, 0x7D, 0x8C, 0x37, 0x03, 0x57, 0x96, 0xAB},
        {0x3E, 0x4F, 0xBD, 0xF3, 0x0F, 0xB8, 0x25, 0x9C,
         0x42, 0x5C, 0xB6, 0xC9, 0x6F, 0x1F, 0x46, 0x35}
    };
    static unsigned char iv[16] = { 0 };
    unsigned char result[16] = { 0 };

    for (i = 0; i < 3; i++) {
        p = 0;
        params[p++] = OSSL_PARAM_construct_utf8_string(
            OSSL_KDF_PARAM_CIPHER, "CAMELLIA-128-CBC", 0);
        params[p++] = OSSL_PARAM_construct_utf8_string(
            OSSL_KDF_PARAM_MAC, "CMAC", 0);
        params[p++] = OSSL_PARAM_construct_utf8_string(
            OSSL_KDF_PARAM_MODE, "FEEDBACK", 0);
        params[p++] = OSSL_PARAM_construct_octet_string(
            OSSL_KDF_PARAM_KEY, input_key, sizeof(input_key));
        params[p++] = OSSL_PARAM_construct_octet_string(
            OSSL_KDF_PARAM_SALT, constants[i], sizeof(constants[i]));
        params[p++] = OSSL_PARAM_construct_octet_string(
            OSSL_KDF_PARAM_SEED, iv, sizeof(iv));
        params[p] = OSSL_PARAM_construct_end();

        kctx = get_kdfbyname("KBKDF");
        ret = TEST_ptr(kctx)
            && TEST_true(EVP_KDF_CTX_set_params(kctx, params))
            && TEST_int_gt(EVP_KDF_derive(kctx, result, sizeof(result)), 0)
            && TEST_mem_eq(result, sizeof(result), outputs[i],
                           sizeof(outputs[i]));
        EVP_KDF_CTX_free(kctx);
        if (ret != 1)
            return ret;
    }

    return ret;
}
