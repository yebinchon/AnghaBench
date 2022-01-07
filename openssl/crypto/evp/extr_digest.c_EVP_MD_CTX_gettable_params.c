
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* pctx; TYPE_1__* digest; } ;
struct TYPE_10__ {int * sigprovctx; TYPE_2__* signature; } ;
struct TYPE_11__ {TYPE_3__ sig; } ;
struct TYPE_12__ {scalar_t__ operation; TYPE_4__ op; } ;
struct TYPE_9__ {int const* (* gettable_ctx_md_params ) (int *) ;} ;
struct TYPE_8__ {int const* (* gettable_ctx_params ) () ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_5__ EVP_PKEY_CTX ;
typedef TYPE_6__ EVP_MD_CTX ;


 scalar_t__ EVP_PKEY_OP_SIGNCTX ;
 scalar_t__ EVP_PKEY_OP_VERIFYCTX ;
 int const* stub1 () ;
 int const* stub2 (int *) ;

const OSSL_PARAM *EVP_MD_CTX_gettable_params(EVP_MD_CTX *ctx)
{
    EVP_PKEY_CTX *pctx;

    if (ctx != ((void*)0)
            && ctx->digest != ((void*)0)
            && ctx->digest->gettable_ctx_params != ((void*)0))
        return ctx->digest->gettable_ctx_params();

    pctx = ctx->pctx;
    if (pctx != ((void*)0)
            && (pctx->operation == EVP_PKEY_OP_VERIFYCTX
                || pctx->operation == EVP_PKEY_OP_SIGNCTX)
            && pctx->op.sig.sigprovctx != ((void*)0)
            && pctx->op.sig.signature->gettable_ctx_md_params != ((void*)0))
        return pctx->op.sig.signature->gettable_ctx_md_params(
                    pctx->op.sig.sigprovctx);

    return ((void*)0);
}
