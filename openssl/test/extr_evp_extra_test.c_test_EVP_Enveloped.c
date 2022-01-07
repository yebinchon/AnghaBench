
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg ;
typedef unsigned char EVP_PKEY ;
typedef unsigned char EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 int EVP_CIPHER_CTX_free (unsigned char*) ;
 unsigned char* EVP_CIPHER_CTX_new () ;
 int EVP_MAX_IV_LENGTH ;
 int EVP_OpenFinal (unsigned char*,unsigned char*,int*) ;
 int EVP_OpenInit (unsigned char*,int const*,unsigned char*,int,unsigned char*,unsigned char*) ;
 int EVP_OpenUpdate (unsigned char*,unsigned char*,int*,unsigned char*,int) ;
 int EVP_PKEY_free (unsigned char*) ;
 int EVP_PKEY_size (unsigned char*) ;
 int EVP_SealFinal (unsigned char*,unsigned char*,int*) ;
 int EVP_SealInit (unsigned char*,int const*,unsigned char**,int*,unsigned char*,unsigned char**,int) ;
 int EVP_SealUpdate (unsigned char*,unsigned char*,int*,unsigned char const*,int) ;
 int * EVP_aes_256_cbc () ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_zalloc (int ) ;
 int TEST_mem_eq (unsigned char const*,int,unsigned char*,int) ;
 int TEST_ptr (unsigned char*) ;
 int TEST_true (int ) ;
 unsigned char* load_example_rsa_key () ;

__attribute__((used)) static int test_EVP_Enveloped(void)
{
    int ret = 0;
    EVP_CIPHER_CTX *ctx = ((void*)0);
    EVP_PKEY *keypair = ((void*)0);
    unsigned char *kek = ((void*)0);
    unsigned char iv[EVP_MAX_IV_LENGTH];
    static const unsigned char msg[] = { 1, 2, 3, 4, 5, 6, 7, 8 };
    int len, kek_len, ciphertext_len, plaintext_len;
    unsigned char ciphertext[32], plaintext[16];
    const EVP_CIPHER *type = EVP_aes_256_cbc();

    if (!TEST_ptr(keypair = load_example_rsa_key())
            || !TEST_ptr(kek = OPENSSL_zalloc(EVP_PKEY_size(keypair)))
            || !TEST_ptr(ctx = EVP_CIPHER_CTX_new())
            || !TEST_true(EVP_SealInit(ctx, type, &kek, &kek_len, iv,
                                       &keypair, 1))
            || !TEST_true(EVP_SealUpdate(ctx, ciphertext, &ciphertext_len,
                                         msg, sizeof(msg)))
            || !TEST_true(EVP_SealFinal(ctx, ciphertext + ciphertext_len,
                                        &len)))
        goto err;

    ciphertext_len += len;

    if (!TEST_true(EVP_OpenInit(ctx, type, kek, kek_len, iv, keypair))
            || !TEST_true(EVP_OpenUpdate(ctx, plaintext, &plaintext_len,
                                         ciphertext, ciphertext_len))
            || !TEST_true(EVP_OpenFinal(ctx, plaintext + plaintext_len, &len)))
        goto err;

    plaintext_len += len;
    if (!TEST_mem_eq(msg, sizeof(msg), plaintext, plaintext_len))
        goto err;

    ret = 1;
err:
    OPENSSL_free(kek);
    EVP_PKEY_free(keypair);
    EVP_CIPHER_CTX_free(ctx);
    return ret;
}
