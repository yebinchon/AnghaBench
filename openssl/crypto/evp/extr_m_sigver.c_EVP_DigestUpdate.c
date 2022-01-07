
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* pctx; } ;
struct TYPE_10__ {int * sigprovctx; TYPE_1__* signature; } ;
struct TYPE_9__ {TYPE_3__ sig; } ;
struct TYPE_11__ {scalar_t__ operation; TYPE_2__ op; } ;
struct TYPE_8__ {int (* digest_verify_update ) (int *,void const*,size_t) ;} ;
typedef TYPE_4__ EVP_PKEY_CTX ;
typedef TYPE_5__ EVP_MD_CTX ;


 int EVP_DigestUpdate (TYPE_5__*,void const*,size_t) ;
 scalar_t__ EVP_PKEY_OP_VERIFYCTX ;
 int stub1 (int *,void const*,size_t) ;

int EVP_DigestVerifyUpdate(EVP_MD_CTX *ctx, const void *data, size_t dsize)
{
    EVP_PKEY_CTX *pctx = ctx->pctx;

    if (pctx == ((void*)0)
            || pctx->operation != EVP_PKEY_OP_VERIFYCTX
            || pctx->op.sig.sigprovctx == ((void*)0)
            || pctx->op.sig.signature == ((void*)0))
        goto legacy;

    return pctx->op.sig.signature->digest_verify_update(pctx->op.sig.sigprovctx,
                                                        data, dsize);

 legacy:
    return EVP_DigestUpdate(ctx, data, dsize);
}
