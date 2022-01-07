
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; TYPE_1__* meth; } ;
struct TYPE_4__ {int (* get_ctx_params ) (int ,int *) ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_2__ EVP_MAC_CTX ;


 int stub1 (int ,int *) ;

int EVP_MAC_CTX_get_params(EVP_MAC_CTX *ctx, OSSL_PARAM params[])
{
    if (ctx->meth->get_ctx_params != ((void*)0))
        return ctx->meth->get_ctx_params(ctx->data, params);
    return 1;
}
