
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIV128_CONTEXT ;
typedef int EVP_CIPHER ;


 int CRYPTO_siv128_init (int *,unsigned char const*,int,int *,int *) ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (int) ;

SIV128_CONTEXT *CRYPTO_siv128_new(const unsigned char *key, int klen, EVP_CIPHER* cbc, EVP_CIPHER* ctr)
{
    SIV128_CONTEXT *ctx;
    int ret;

    if ((ctx = OPENSSL_malloc(sizeof(*ctx))) != ((void*)0)) {
        ret = CRYPTO_siv128_init(ctx, key, klen, cbc, ctr);
        if (ret)
            return ctx;
        OPENSSL_free(ctx);
    }

    return ((void*)0);
}
