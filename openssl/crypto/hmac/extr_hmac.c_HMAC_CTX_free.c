
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int md_ctx; int o_ctx; int i_ctx; } ;
typedef TYPE_1__ HMAC_CTX ;


 int EVP_MD_CTX_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int hmac_ctx_cleanup (TYPE_1__*) ;

void HMAC_CTX_free(HMAC_CTX *ctx)
{
    if (ctx != ((void*)0)) {
        hmac_ctx_cleanup(ctx);
        EVP_MD_CTX_free(ctx->i_ctx);
        EVP_MD_CTX_free(ctx->o_ctx);
        EVP_MD_CTX_free(ctx->md_ctx);
        OPENSSL_free(ctx);
    }
}
