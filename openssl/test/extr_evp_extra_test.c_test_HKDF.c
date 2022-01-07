
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int salt ;
typedef int out ;
typedef int key ;
typedef int info ;
typedef int expected ;
typedef int EVP_PKEY_CTX ;


 int EVP_PKEY_CTX_add1_hkdf_info (int *,unsigned char*,int) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new_id (int ,int *) ;
 int EVP_PKEY_CTX_set1_hkdf_key (int *,unsigned char*,int) ;
 int EVP_PKEY_CTX_set1_hkdf_salt (int *,unsigned char*,int) ;
 int EVP_PKEY_CTX_set_hkdf_md (int *,int ) ;
 int EVP_PKEY_HKDF ;
 int EVP_PKEY_derive (int *,unsigned char*,size_t*) ;
 int EVP_PKEY_derive_init (int *) ;
 int EVP_sha256 () ;
 int TEST_int_gt (int ,int ) ;
 int TEST_mem_eq (unsigned char*,size_t,unsigned char const*,size_t) ;
 int TEST_ptr (int *) ;
 int memset (unsigned char*,int ,size_t) ;

__attribute__((used)) static int test_HKDF(void)
{
    EVP_PKEY_CTX *pctx;
    unsigned char out[20];
    size_t outlen;
    int i, ret = 0;
    unsigned char salt[] = "0123456789";
    unsigned char key[] = "012345678901234567890123456789";
    unsigned char info[] = "infostring";
    const unsigned char expected[] = {
        0xe5, 0x07, 0x70, 0x7f, 0xc6, 0x78, 0xd6, 0x54, 0x32, 0x5f, 0x7e, 0xc5,
        0x7b, 0x59, 0x3e, 0xd8, 0x03, 0x6b, 0xed, 0xca
    };
    size_t expectedlen = sizeof(expected);

    if (!TEST_ptr(pctx = EVP_PKEY_CTX_new_id(EVP_PKEY_HKDF, ((void*)0))))
        goto done;


    for (i = 0; i < 2; i++) {
        outlen = sizeof(out);
        memset(out, 0, outlen);

        if (!TEST_int_gt(EVP_PKEY_derive_init(pctx), 0)
                || !TEST_int_gt(EVP_PKEY_CTX_set_hkdf_md(pctx, EVP_sha256()), 0)
                || !TEST_int_gt(EVP_PKEY_CTX_set1_hkdf_salt(pctx, salt,
                                                            sizeof(salt) - 1), 0)
                || !TEST_int_gt(EVP_PKEY_CTX_set1_hkdf_key(pctx, key,
                                                           sizeof(key) - 1), 0)
                || !TEST_int_gt(EVP_PKEY_CTX_add1_hkdf_info(pctx, info,
                                                            sizeof(info) - 1), 0)
                || !TEST_int_gt(EVP_PKEY_derive(pctx, out, &outlen), 0)
                || !TEST_mem_eq(out, outlen, expected, expectedlen))
            goto done;
    }

    ret = 1;

 done:
    EVP_PKEY_CTX_free(pctx);

    return ret;
}
