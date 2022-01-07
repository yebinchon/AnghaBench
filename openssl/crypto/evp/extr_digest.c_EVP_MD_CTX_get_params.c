
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


struct TYPE_13__ {int provctx; TYPE_1__* digest; TYPE_5__* pctx; } ;
struct TYPE_10__ {int * sigprovctx; TYPE_2__* signature; } ;
struct TYPE_11__ {TYPE_3__ sig; } ;
struct TYPE_12__ {scalar_t__ operation; TYPE_4__ op; } ;
struct TYPE_9__ {int (* get_ctx_md_params ) (int *,int *) ;} ;
struct TYPE_8__ {int (* get_ctx_params ) (int ,int *) ;int * get_params; } ;
typedef int OSSL_PARAM ;
typedef TYPE_5__ EVP_PKEY_CTX ;
typedef TYPE_6__ EVP_MD_CTX ;


 scalar_t__ EVP_PKEY_OP_SIGNCTX ;
 scalar_t__ EVP_PKEY_OP_VERIFYCTX ;
 int stub1 (int ,int *) ;
 int stub2 (int *,int *) ;

int EVP_MD_CTX_get_params(EVP_MD_CTX *ctx, OSSL_PARAM params[])
{
    EVP_PKEY_CTX *pctx = ctx->pctx;

    if (ctx->digest != ((void*)0) && ctx->digest->get_params != ((void*)0))
        return ctx->digest->get_ctx_params(ctx->provctx, params);

    if (pctx != ((void*)0)
            && (pctx->operation == EVP_PKEY_OP_VERIFYCTX
                || pctx->operation == EVP_PKEY_OP_SIGNCTX)
            && pctx->op.sig.sigprovctx != ((void*)0)
            && pctx->op.sig.signature->get_ctx_md_params != ((void*)0))
        return pctx->op.sig.signature->get_ctx_md_params(pctx->op.sig.sigprovctx,
                                                         params);

    return 0;
}
