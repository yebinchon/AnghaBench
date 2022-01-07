
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 int EVP_CIPHER_CTX_free (int const*) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_set_key_length (int const*,int) ;
 int EVP_EncryptInit_ex (int const*,int const*,int *,int *,int *) ;
 int * EVP_aes_192_gcm () ;
 scalar_t__ TEST_false (int ) ;
 scalar_t__ TEST_ptr (int const*) ;
 scalar_t__ TEST_true (int ) ;

__attribute__((used)) static int badkeylen_test(void)
{
    int ret;
    EVP_CIPHER_CTX *ctx = ((void*)0);
    const EVP_CIPHER *cipher;

    ret = TEST_ptr(cipher = EVP_aes_192_gcm())
          && TEST_ptr(ctx = EVP_CIPHER_CTX_new())
          && TEST_true(EVP_EncryptInit_ex(ctx, cipher, ((void*)0), ((void*)0), ((void*)0)))
          && TEST_false(EVP_CIPHER_CTX_set_key_length(ctx, 2));
    EVP_CIPHER_CTX_free(ctx);
    return ret;
}
