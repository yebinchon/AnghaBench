
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;
typedef int ENGINE ;


 int EVP_CIPHER_CTX_key_length (int *) ;
 int EVP_CIPHER_CTX_set_key_length (int *,size_t) ;
 int EVP_CIPHER_CTX_set_padding (int *,int ) ;
 int EVP_EncryptInit_ex (int *,int const*,int *,unsigned char const*,int *) ;

__attribute__((used)) static int cipher_init(EVP_CIPHER_CTX *ctx,
                       const EVP_CIPHER *cipher, ENGINE *engine,
                       const unsigned char *key, size_t key_len)
{
    int klen, ret;

    ret = EVP_EncryptInit_ex(ctx, cipher, engine, key, ((void*)0));
    if (!ret)
        goto out;

    klen = EVP_CIPHER_CTX_key_length(ctx);
    if (key_len != (size_t)klen) {
        ret = EVP_CIPHER_CTX_set_key_length(ctx, key_len);
        if (!ret)
            goto out;
    }



    ret = EVP_CIPHER_CTX_set_padding(ctx, 0);
    if (!ret)
        goto out;

out:
    return ret;
}
