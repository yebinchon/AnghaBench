
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int * sigprovctx; TYPE_3__* signature; } ;
struct TYPE_11__ {int * exchprovctx; TYPE_1__* exchange; } ;
struct TYPE_14__ {TYPE_4__ sig; TYPE_2__ kex; } ;
struct TYPE_15__ {TYPE_5__ op; } ;
struct TYPE_12__ {int (* set_ctx_params ) (int *,int *) ;} ;
struct TYPE_10__ {int (* set_ctx_params ) (int *,int *) ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_6__ EVP_PKEY_CTX ;


 scalar_t__ EVP_PKEY_CTX_IS_DERIVE_OP (TYPE_6__*) ;
 scalar_t__ EVP_PKEY_CTX_IS_SIGNATURE_OP (TYPE_6__*) ;
 int stub1 (int *,int *) ;
 int stub2 (int *,int *) ;

int EVP_PKEY_CTX_set_params(EVP_PKEY_CTX *ctx, OSSL_PARAM *params)
{
    if (EVP_PKEY_CTX_IS_DERIVE_OP(ctx)
            && ctx->op.kex.exchprovctx != ((void*)0)
            && ctx->op.kex.exchange != ((void*)0)
            && ctx->op.kex.exchange->set_ctx_params != ((void*)0))
        return ctx->op.kex.exchange->set_ctx_params(ctx->op.kex.exchprovctx,
                                                    params);
    if (EVP_PKEY_CTX_IS_SIGNATURE_OP(ctx)
            && ctx->op.sig.sigprovctx != ((void*)0)
            && ctx->op.sig.signature != ((void*)0)
            && ctx->op.sig.signature->set_ctx_params != ((void*)0))
        return ctx->op.sig.signature->set_ctx_params(ctx->op.sig.sigprovctx,
                                                     params);
    return 0;
}
