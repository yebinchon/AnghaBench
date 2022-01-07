
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * sigprovctx; } ;
struct TYPE_11__ {TYPE_1__ sig; } ;
struct TYPE_14__ {scalar_t__ operation; TYPE_2__ op; } ;
struct TYPE_13__ {int (* update ) (TYPE_4__*,void const*,size_t) ;int provctx; TYPE_3__* digest; TYPE_6__* pctx; } ;
struct TYPE_12__ {int (* dupdate ) (int ,void const*,size_t) ;int * prov; } ;
typedef TYPE_4__ EVP_MD_CTX ;


 int EVP_DigestSignUpdate (TYPE_4__*,void const*,size_t) ;
 int EVP_DigestVerifyUpdate (TYPE_4__*,void const*,size_t) ;
 int EVP_F_EVP_DIGESTUPDATE ;
 scalar_t__ EVP_PKEY_CTX_IS_SIGNATURE_OP (TYPE_6__*) ;
 scalar_t__ EVP_PKEY_OP_SIGNCTX ;
 scalar_t__ EVP_PKEY_OP_VERIFYCTX ;
 int EVP_R_UPDATE_ERROR ;
 int EVPerr (int ,int ) ;
 int stub1 (int ,void const*,size_t) ;
 int stub2 (TYPE_4__*,void const*,size_t) ;

int EVP_DigestUpdate(EVP_MD_CTX *ctx, const void *data, size_t count)
{
    if (count == 0)
        return 1;

    if (ctx->pctx != ((void*)0)
            && EVP_PKEY_CTX_IS_SIGNATURE_OP(ctx->pctx)
            && ctx->pctx->op.sig.sigprovctx != ((void*)0)) {







        if (ctx->pctx->operation == EVP_PKEY_OP_SIGNCTX)
            return EVP_DigestSignUpdate(ctx, data, count);
        if (ctx->pctx->operation == EVP_PKEY_OP_VERIFYCTX)
            return EVP_DigestVerifyUpdate(ctx, data, count);
        EVPerr(EVP_F_EVP_DIGESTUPDATE, EVP_R_UPDATE_ERROR);
        return 0;
    }

    if (ctx->digest == ((void*)0) || ctx->digest->prov == ((void*)0))
        goto legacy;

    if (ctx->digest->dupdate == ((void*)0)) {
        EVPerr(EVP_F_EVP_DIGESTUPDATE, EVP_R_UPDATE_ERROR);
        return 0;
    }
    return ctx->digest->dupdate(ctx->provctx, data, count);


 legacy:
    return ctx->update(ctx, data, count);
}
