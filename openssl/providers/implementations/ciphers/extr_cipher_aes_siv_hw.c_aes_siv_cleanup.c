
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctr; int cbc; int siv; } ;
typedef int SIV128_CONTEXT ;
typedef TYPE_1__ PROV_AES_SIV_CTX ;


 int CRYPTO_siv128_cleanup (int *) ;
 int EVP_CIPHER_free (int ) ;

__attribute__((used)) static void aes_siv_cleanup(void *vctx)
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;
    SIV128_CONTEXT *sctx = &ctx->siv;

    CRYPTO_siv128_cleanup(sctx);
    EVP_CIPHER_free(ctx->cbc);
    EVP_CIPHER_free(ctx->ctr);
}
