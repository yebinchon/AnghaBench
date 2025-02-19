
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int testmsg ;
typedef int OSSL_PROVIDER ;
typedef int OPENSSL_CTX ;
typedef int EVP_MD ;


 int EVP_MD_block_size (int *) ;
 int * EVP_MD_fetch (int *,char*,int ) ;
 int EVP_MD_meth_free (int *) ;
 int EVP_MD_nid (int *) ;
 int EVP_MD_size (int *) ;
 int EVP_MD_up_ref (int *) ;
 int * EVP_sha256 () ;
 int NID_sha256 ;
 int OPENSSL_CTX_free (int *) ;
 int OPENSSL_thread_stop_ex (int *) ;
 int OSSL_PROVIDER_unload (int *) ;
 int SHA256_CBLOCK ;
 int SHA256_DIGEST_LENGTH ;
 int TEST_int_eq (int ,int ) ;
 int TEST_ptr (int *) ;
 int TEST_ptr_null (int *) ;
 int TEST_true (int ) ;
 int calculate_digest (int *,char const*,int,unsigned char const*) ;
 scalar_t__ expected_fetch_result ;
 int fetch_property ;
 int load_providers (int **,int **) ;
 scalar_t__ use_default_ctx ;

__attribute__((used)) static int test_EVP_MD_fetch(void)
{
    OPENSSL_CTX *ctx = ((void*)0);
    EVP_MD *md = ((void*)0);
    OSSL_PROVIDER *prov[2] = {((void*)0), ((void*)0)};
    int ret = 0;
    const char testmsg[] = "Hello world";
    const unsigned char exptd[] = {
      0x27, 0x51, 0x8b, 0xa9, 0x68, 0x30, 0x11, 0xf6, 0xb3, 0x96, 0x07, 0x2c,
      0x05, 0xf6, 0x65, 0x6d, 0x04, 0xf5, 0xfb, 0xc3, 0x78, 0x7c, 0xf9, 0x24,
      0x90, 0xec, 0x60, 0x6e, 0x50, 0x92, 0xe3, 0x26
    };

    if (use_default_ctx == 0 && !load_providers(&ctx, prov))
        goto err;


    if (!TEST_true(calculate_digest(EVP_sha256(), testmsg, sizeof(testmsg),
                                    exptd))
            || !TEST_int_eq(EVP_MD_size(EVP_sha256()), SHA256_DIGEST_LENGTH)
            || !TEST_int_eq(EVP_MD_block_size(EVP_sha256()), SHA256_CBLOCK))
        goto err;


    md = EVP_MD_fetch(ctx, "SHA256", fetch_property);
    if (expected_fetch_result != 0) {
        if (!TEST_ptr(md)
            || !TEST_int_eq(EVP_MD_nid(md), NID_sha256)
            || !TEST_true(calculate_digest(md, testmsg, sizeof(testmsg), exptd))
            || !TEST_int_eq(EVP_MD_size(md), SHA256_DIGEST_LENGTH)
            || !TEST_int_eq(EVP_MD_block_size(md), SHA256_CBLOCK))
        goto err;


        if (!TEST_true(EVP_MD_up_ref(md)))
            goto err;

        EVP_MD_meth_free(md);
    } else {
        if (!TEST_ptr_null(md))
            goto err;
    }
    ret = 1;

err:
    EVP_MD_meth_free(md);
    OSSL_PROVIDER_unload(prov[0]);
    OSSL_PROVIDER_unload(prov[1]);



    if (ctx != ((void*)0)) {
        OPENSSL_thread_stop_ex(ctx);
        OPENSSL_CTX_free(ctx);
    }
    return ret;
}
