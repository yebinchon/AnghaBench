
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int (* freectx ) (int *) ;} ;
struct TYPE_14__ {int (* freectx ) (int *) ;} ;
struct TYPE_11__ {TYPE_6__* signature; int * sigprovctx; } ;
struct TYPE_10__ {TYPE_9__* exchange; int * exchprovctx; } ;
struct TYPE_12__ {TYPE_2__ sig; TYPE_1__ kex; } ;
struct TYPE_13__ {TYPE_3__ op; } ;
typedef TYPE_4__ EVP_PKEY_CTX ;


 int EVP_KEYEXCH_free (TYPE_9__*) ;
 scalar_t__ EVP_PKEY_CTX_IS_DERIVE_OP (TYPE_4__*) ;
 scalar_t__ EVP_PKEY_CTX_IS_SIGNATURE_OP (TYPE_4__*) ;
 int EVP_SIGNATURE_free (TYPE_6__*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;

void evp_pkey_ctx_free_old_ops(EVP_PKEY_CTX *ctx)
{
    if (EVP_PKEY_CTX_IS_DERIVE_OP(ctx)) {
        if (ctx->op.kex.exchprovctx != ((void*)0) && ctx->op.kex.exchange != ((void*)0))
            ctx->op.kex.exchange->freectx(ctx->op.kex.exchprovctx);
        EVP_KEYEXCH_free(ctx->op.kex.exchange);
        ctx->op.kex.exchprovctx = ((void*)0);
        ctx->op.kex.exchange = ((void*)0);
    } else if (EVP_PKEY_CTX_IS_SIGNATURE_OP(ctx)) {
        if (ctx->op.sig.sigprovctx != ((void*)0) && ctx->op.sig.signature != ((void*)0))
            ctx->op.sig.signature->freectx(ctx->op.sig.sigprovctx);
        EVP_SIGNATURE_free(ctx->op.sig.signature);
        ctx->op.sig.sigprovctx = ((void*)0);
        ctx->op.sig.signature = ((void*)0);
    }
}
