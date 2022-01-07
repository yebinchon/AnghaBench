
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; scalar_t__ key_length; int * md; int md_ctx; int o_ctx; int i_ctx; } ;
typedef TYPE_1__ HMAC_CTX ;


 int EVP_MD_CTX_reset (int ) ;
 int OPENSSL_cleanse (int ,int) ;

__attribute__((used)) static void hmac_ctx_cleanup(HMAC_CTX *ctx)
{
    EVP_MD_CTX_reset(ctx->i_ctx);
    EVP_MD_CTX_reset(ctx->o_ctx);
    EVP_MD_CTX_reset(ctx->md_ctx);
    ctx->md = ((void*)0);
    ctx->key_length = 0;
    OPENSSL_cleanse(ctx->key, sizeof(ctx->key));
}
