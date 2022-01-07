
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md_ctx; int o_ctx; int i_ctx; } ;
typedef TYPE_1__ HMAC_CTX ;


 int EVP_MD_CTX_set_flags (int ,unsigned long) ;

void HMAC_CTX_set_flags(HMAC_CTX *ctx, unsigned long flags)
{
    EVP_MD_CTX_set_flags(ctx->i_ctx, flags);
    EVP_MD_CTX_set_flags(ctx->o_ctx, flags);
    EVP_MD_CTX_set_flags(ctx->md_ctx, flags);
}
