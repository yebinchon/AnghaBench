
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int provctx; TYPE_1__* cipher; } ;
struct TYPE_4__ {int (* set_ctx_params ) (int ,int const*) ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_2__ EVP_CIPHER_CTX ;


 int stub1 (int ,int const*) ;

int EVP_CIPHER_CTX_set_params(EVP_CIPHER_CTX *ctx, const OSSL_PARAM params[])
{
    if (ctx->cipher != ((void*)0) && ctx->cipher->set_ctx_params != ((void*)0))
        return ctx->cipher->set_ctx_params(ctx->provctx, params);
    return 0;
}
