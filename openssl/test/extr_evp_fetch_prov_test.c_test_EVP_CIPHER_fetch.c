
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int testmsg ;
typedef int OSSL_PROVIDER ;
typedef int OPENSSL_CTX ;
typedef int EVP_CIPHER ;


 int * EVP_CIPHER_fetch (int *,char*,int ) ;
 int EVP_CIPHER_meth_free (int *) ;
 int EVP_CIPHER_up_ref (int *) ;
 int * EVP_aes_128_cbc () ;
 int OPENSSL_CTX_free (int *) ;
 int OSSL_PROVIDER_unload (int *) ;
 int TEST_ptr (int *) ;
 int TEST_ptr_null (int *) ;
 int TEST_true (int ) ;
 int encrypt_decrypt (int *,unsigned char const*,int) ;
 scalar_t__ expected_fetch_result ;
 int fetch_property ;
 int load_providers (int **,int **) ;
 scalar_t__ use_default_ctx ;

__attribute__((used)) static int test_EVP_CIPHER_fetch(void)
{
    OPENSSL_CTX *ctx = ((void*)0);
    EVP_CIPHER *cipher = ((void*)0);
    OSSL_PROVIDER *prov[2] = {((void*)0), ((void*)0)};
    int ret = 0;
    const unsigned char testmsg[] = "Hello world";

    if (use_default_ctx == 0 && !load_providers(&ctx, prov))
        goto err;


    if (!TEST_true(encrypt_decrypt(EVP_aes_128_cbc(), testmsg, sizeof(testmsg))))
        goto err;


    cipher = EVP_CIPHER_fetch(ctx, "AES-128-CBC", fetch_property);
    if (expected_fetch_result != 0) {
        if (!TEST_ptr(cipher)
            || !TEST_true(encrypt_decrypt(cipher, testmsg, sizeof(testmsg)))) {
            if (!TEST_true(EVP_CIPHER_up_ref(cipher)))
                goto err;

            EVP_CIPHER_meth_free(cipher);
        }
    } else {
        if (!TEST_ptr_null(cipher))
            goto err;
    }
    ret = 1;
err:
    EVP_CIPHER_meth_free(cipher);
    OSSL_PROVIDER_unload(prov[0]);
    OSSL_PROVIDER_unload(prov[1]);
    OPENSSL_CTX_free(ctx);
    return ret;
}
