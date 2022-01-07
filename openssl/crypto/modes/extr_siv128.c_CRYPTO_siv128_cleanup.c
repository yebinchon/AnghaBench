
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int final_ret; int crypto_ok; int tag; int d; int * mac; int * mac_ctx_init; int * cipher_ctx; } ;
typedef TYPE_1__ SIV128_CONTEXT ;


 int EVP_CIPHER_CTX_free (int *) ;
 int EVP_MAC_CTX_free (int *) ;
 int EVP_MAC_free (int *) ;
 int OPENSSL_cleanse (int *,int) ;

int CRYPTO_siv128_cleanup(SIV128_CONTEXT *ctx)
{
    if (ctx != ((void*)0)) {
        EVP_CIPHER_CTX_free(ctx->cipher_ctx);
        ctx->cipher_ctx = ((void*)0);
        EVP_MAC_CTX_free(ctx->mac_ctx_init);
        ctx->mac_ctx_init = ((void*)0);
        EVP_MAC_free(ctx->mac);
        ctx->mac = ((void*)0);
        OPENSSL_cleanse(&ctx->d, sizeof(ctx->d));
        OPENSSL_cleanse(&ctx->tag, sizeof(ctx->tag));
        ctx->final_ret = -1;
        ctx->crypto_ok = 1;
    }
    return 1;
}
