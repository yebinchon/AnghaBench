
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CipherFinal_ex (int *,unsigned char*,int*) ;
 int EVP_CipherInit_ex (int *,int const*,int *,unsigned char*,int *,int) ;
 int EVP_CipherUpdate (int *,unsigned char*,int*,unsigned char const*,int) ;
 int TEST_mem_eq (unsigned char*,int,unsigned char const*,size_t) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int encrypt_decrypt(const EVP_CIPHER *cipher, const unsigned char *msg,
                           size_t len)
{
    int ret = 0, ctlen, ptlen;
    EVP_CIPHER_CTX *ctx = ((void*)0);
    unsigned char key[128 / 8];
    unsigned char ct[64], pt[64];

    memset(key, 0, sizeof(key));
    if (!TEST_ptr(ctx = EVP_CIPHER_CTX_new())
            || !TEST_true(EVP_CipherInit_ex(ctx, cipher, ((void*)0), key, ((void*)0), 1))
            || !TEST_true(EVP_CipherUpdate(ctx, ct, &ctlen, msg, len))
            || !TEST_true(EVP_CipherFinal_ex(ctx, ct, &ctlen))
            || !TEST_true(EVP_CipherInit_ex(ctx, cipher, ((void*)0), key, ((void*)0), 0))
            || !TEST_true(EVP_CipherUpdate(ctx, pt, &ptlen, ct, ctlen))
            || !TEST_true(EVP_CipherFinal_ex(ctx, pt, &ptlen))
            || !TEST_mem_eq(pt, ptlen, msg, len))
        goto err;

    ret = 1;
err:
    EVP_CIPHER_CTX_free(ctx);
    return ret;
}
