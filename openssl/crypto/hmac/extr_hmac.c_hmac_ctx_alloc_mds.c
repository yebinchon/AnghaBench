
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * md_ctx; int * o_ctx; int * i_ctx; } ;
typedef TYPE_1__ HMAC_CTX ;


 void* EVP_MD_CTX_new () ;

__attribute__((used)) static int hmac_ctx_alloc_mds(HMAC_CTX *ctx)
{
    if (ctx->i_ctx == ((void*)0))
        ctx->i_ctx = EVP_MD_CTX_new();
    if (ctx->i_ctx == ((void*)0))
        return 0;
    if (ctx->o_ctx == ((void*)0))
        ctx->o_ctx = EVP_MD_CTX_new();
    if (ctx->o_ctx == ((void*)0))
        return 0;
    if (ctx->md_ctx == ((void*)0))
        ctx->md_ctx = EVP_MD_CTX_new();
    if (ctx->md_ctx == ((void*)0))
        return 0;
    return 1;
}
