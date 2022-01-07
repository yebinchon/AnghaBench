
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * sigprovctx; TYPE_2__* signature; } ;
struct TYPE_9__ {TYPE_1__ sig; } ;
struct TYPE_10__ {TYPE_3__ op; } ;
struct TYPE_8__ {int (* get_ctx_params ) (int *,int *) ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_4__ EVP_PKEY_CTX ;


 scalar_t__ EVP_PKEY_CTX_IS_SIGNATURE_OP (TYPE_4__*) ;
 int stub1 (int *,int *) ;

int EVP_PKEY_CTX_get_params(EVP_PKEY_CTX *ctx, OSSL_PARAM *params)
{
    if (EVP_PKEY_CTX_IS_SIGNATURE_OP(ctx)
            && ctx->op.sig.sigprovctx != ((void*)0)
            && ctx->op.sig.signature != ((void*)0)
            && ctx->op.sig.signature->get_ctx_params != ((void*)0))
        return ctx->op.sig.signature->get_ctx_params(ctx->op.sig.sigprovctx,
                                                     params);
    return 0;
}
