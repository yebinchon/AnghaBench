
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z ;
typedef int shared ;
typedef int out ;
typedef int expected ;
typedef int OSSL_PARAM ;
typedef int EVP_KDF_CTX ;


 int EVP_KDF_CTX_free (int *) ;
 int EVP_KDF_CTX_set_params (int *,int *) ;
 int EVP_KDF_derive (int *,unsigned char*,int) ;
 int OSSL_KDF_NAME_X963KDF ;
 int OSSL_KDF_PARAM_DIGEST ;
 int OSSL_KDF_PARAM_INFO ;
 int OSSL_KDF_PARAM_KEY ;
 int OSSL_PARAM_construct_end () ;
 void* OSSL_PARAM_construct_octet_string (int ,unsigned char*,int) ;
 int OSSL_PARAM_construct_utf8_string (int ,char*,int) ;
 scalar_t__ TEST_int_gt (int ,int ) ;
 scalar_t__ TEST_mem_eq (unsigned char*,int,unsigned char const*,int) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int * get_kdfbyname (int ) ;

__attribute__((used)) static int test_kdf_x963(void)
{
    int ret;
    EVP_KDF_CTX *kctx;
    OSSL_PARAM params[4], *p = params;
    unsigned char out[1024 / 8];





    static unsigned char z[] = {
        0x00, 0xaa, 0x5b, 0xb7, 0x9b, 0x33, 0xe3, 0x89, 0xfa, 0x58, 0xce, 0xad,
        0xc0, 0x47, 0x19, 0x7f, 0x14, 0xe7, 0x37, 0x12, 0xf4, 0x52, 0xca, 0xa9,
        0xfc, 0x4c, 0x9a, 0xdb, 0x36, 0x93, 0x48, 0xb8, 0x15, 0x07, 0x39, 0x2f,
        0x1a, 0x86, 0xdd, 0xfd, 0xb7, 0xc4, 0xff, 0x82, 0x31, 0xc4, 0xbd, 0x0f,
        0x44, 0xe4, 0x4a, 0x1b, 0x55, 0xb1, 0x40, 0x47, 0x47, 0xa9, 0xe2, 0xe7,
        0x53, 0xf5, 0x5e, 0xf0, 0x5a, 0x2d
    };
    static unsigned char shared[] = {
        0xe3, 0xb5, 0xb4, 0xc1, 0xb0, 0xd5, 0xcf, 0x1d, 0x2b, 0x3a, 0x2f, 0x99,
        0x37, 0x89, 0x5d, 0x31
    };
    static const unsigned char expected[sizeof(out)] = {
        0x44, 0x63, 0xf8, 0x69, 0xf3, 0xcc, 0x18, 0x76, 0x9b, 0x52, 0x26, 0x4b,
        0x01, 0x12, 0xb5, 0x85, 0x8f, 0x7a, 0xd3, 0x2a, 0x5a, 0x2d, 0x96, 0xd8,
        0xcf, 0xfa, 0xbf, 0x7f, 0xa7, 0x33, 0x63, 0x3d, 0x6e, 0x4d, 0xd2, 0xa5,
        0x99, 0xac, 0xce, 0xb3, 0xea, 0x54, 0xa6, 0x21, 0x7c, 0xe0, 0xb5, 0x0e,
        0xef, 0x4f, 0x6b, 0x40, 0xa5, 0xc3, 0x02, 0x50, 0xa5, 0xa8, 0xee, 0xee,
        0x20, 0x80, 0x02, 0x26, 0x70, 0x89, 0xdb, 0xf3, 0x51, 0xf3, 0xf5, 0x02,
        0x2a, 0xa9, 0x63, 0x8b, 0xf1, 0xee, 0x41, 0x9d, 0xea, 0x9c, 0x4f, 0xf7,
        0x45, 0xa2, 0x5a, 0xc2, 0x7b, 0xda, 0x33, 0xca, 0x08, 0xbd, 0x56, 0xdd,
        0x1a, 0x59, 0xb4, 0x10, 0x6c, 0xf2, 0xdb, 0xbc, 0x0a, 0xb2, 0xaa, 0x8e,
        0x2e, 0xfa, 0x7b, 0x17, 0x90, 0x2d, 0x34, 0x27, 0x69, 0x51, 0xce, 0xcc,
        0xab, 0x87, 0xf9, 0x66, 0x1c, 0x3e, 0x88, 0x16
    };

    *p++ = OSSL_PARAM_construct_utf8_string(OSSL_KDF_PARAM_DIGEST,
                                            (char *)"sha512", sizeof("sha512"));
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_KEY, z, sizeof(z));
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_INFO, shared,
                                             sizeof(shared));
    *p = OSSL_PARAM_construct_end();

    ret =
        TEST_ptr(kctx = get_kdfbyname(OSSL_KDF_NAME_X963KDF))
        && TEST_true(EVP_KDF_CTX_set_params(kctx, params))
        && TEST_int_gt(EVP_KDF_derive(kctx, out, sizeof(out)), 0)
        && TEST_mem_eq(out, sizeof(out), expected, sizeof(expected));

    EVP_KDF_CTX_free(kctx);
    return ret;
}
