
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; TYPE_1__* meth; } ;
struct TYPE_4__ {int (* set_ctx_params ) (int ,int const*) ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_2__ EVP_KDF_CTX ;


 int stub1 (int ,int const*) ;

int EVP_KDF_CTX_set_params(EVP_KDF_CTX *ctx, const OSSL_PARAM params[])
{
    if (ctx->meth->set_ctx_params != ((void*)0))
        return ctx->meth->set_ctx_params(ctx->data, params);
    return 1;
}
