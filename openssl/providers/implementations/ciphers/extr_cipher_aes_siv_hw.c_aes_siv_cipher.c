
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enc; int siv; } ;
typedef int SIV128_CONTEXT ;
typedef TYPE_1__ PROV_AES_SIV_CTX ;


 int CRYPTO_siv128_aad (int *,unsigned char const*,size_t) ;
 scalar_t__ CRYPTO_siv128_decrypt (int *,unsigned char const*,unsigned char*,size_t) ;
 scalar_t__ CRYPTO_siv128_encrypt (int *,unsigned char const*,unsigned char*,size_t) ;
 scalar_t__ CRYPTO_siv128_finish (int *) ;

__attribute__((used)) static int aes_siv_cipher(void *vctx, unsigned char *out,
                          const unsigned char *in, size_t len)
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;
    SIV128_CONTEXT *sctx = &ctx->siv;


    if (in == ((void*)0))
        return CRYPTO_siv128_finish(sctx) == 0;


    if (out == ((void*)0))
        return (CRYPTO_siv128_aad(sctx, in, len) == 1);

    if (ctx->enc)
        return CRYPTO_siv128_encrypt(sctx, in, out, len) > 0;

    return CRYPTO_siv128_decrypt(sctx, in, out, len) > 0;
}
