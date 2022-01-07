
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


struct TYPE_11__ {TYPE_1__* signature; } ;
struct TYPE_12__ {TYPE_5__* exchange; } ;
struct TYPE_13__ {TYPE_2__ sig; TYPE_3__ kex; } ;
struct TYPE_15__ {TYPE_4__ op; } ;
struct TYPE_14__ {int const* (* settable_ctx_params ) () ;} ;
struct TYPE_10__ {int const* (* settable_ctx_params ) () ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_6__ EVP_PKEY_CTX ;


 scalar_t__ EVP_PKEY_CTX_IS_DERIVE_OP (TYPE_6__*) ;
 scalar_t__ EVP_PKEY_CTX_IS_SIGNATURE_OP (TYPE_6__*) ;
 int const* stub1 () ;
 int const* stub2 () ;

const OSSL_PARAM *EVP_PKEY_CTX_settable_params(EVP_PKEY_CTX *ctx)
{
    if (EVP_PKEY_CTX_IS_DERIVE_OP(ctx)
            && ctx->op.kex.exchange != ((void*)0)
            && ctx->op.kex.exchange->settable_ctx_params != ((void*)0))
        return ctx->op.kex.exchange->settable_ctx_params();
    if (EVP_PKEY_CTX_IS_SIGNATURE_OP(ctx)
            && ctx->op.sig.signature != ((void*)0)
            && ctx->op.sig.signature->settable_ctx_params != ((void*)0))
        return ctx->op.sig.signature->settable_ctx_params();

    return ((void*)0);
}
