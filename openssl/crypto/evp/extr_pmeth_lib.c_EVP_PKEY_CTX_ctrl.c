
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int * sigprovctx; } ;
struct TYPE_11__ {int * exchprovctx; } ;
struct TYPE_13__ {TYPE_2__ sig; TYPE_1__ kex; } ;
struct TYPE_15__ {int operation; TYPE_4__* pmeth; TYPE_3__ op; } ;
struct TYPE_14__ {int (* ctrl ) (TYPE_5__*,int,int,void*) ;int pkey_id; int * digest_custom; } ;
typedef TYPE_5__ EVP_PKEY_CTX ;


 int EVP_F_EVP_PKEY_CTX_CTRL ;
 scalar_t__ EVP_PKEY_CTX_IS_DERIVE_OP (TYPE_5__*) ;
 scalar_t__ EVP_PKEY_CTX_IS_SIGNATURE_OP (TYPE_5__*) ;
 int EVP_PKEY_OP_UNDEFINED ;
 int EVP_R_COMMAND_NOT_SUPPORTED ;
 int EVP_R_INVALID_OPERATION ;
 int EVP_R_NO_OPERATION_SET ;
 int EVPerr (int ,int ) ;
 int legacy_ctrl_to_param (TYPE_5__*,int,int,int,int,void*) ;
 int stub1 (TYPE_5__*,int,int,void*) ;

int EVP_PKEY_CTX_ctrl(EVP_PKEY_CTX *ctx, int keytype, int optype,
                      int cmd, int p1, void *p2)
{
    int ret;

    if (ctx == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_CTX_CTRL, EVP_R_COMMAND_NOT_SUPPORTED);
        return -2;
    }

    if ((EVP_PKEY_CTX_IS_DERIVE_OP(ctx) && ctx->op.kex.exchprovctx != ((void*)0))
            || (EVP_PKEY_CTX_IS_SIGNATURE_OP(ctx)
                && ctx->op.sig.sigprovctx != ((void*)0)))
        return legacy_ctrl_to_param(ctx, keytype, optype, cmd, p1, p2);

    if (ctx->pmeth == ((void*)0) || ctx->pmeth->ctrl == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_CTX_CTRL, EVP_R_COMMAND_NOT_SUPPORTED);
        return -2;
    }
    if ((keytype != -1) && (ctx->pmeth->pkey_id != keytype))
        return -1;


    if (ctx->pmeth->digest_custom != ((void*)0))
        goto doit;

    if (ctx->operation == EVP_PKEY_OP_UNDEFINED) {
        EVPerr(EVP_F_EVP_PKEY_CTX_CTRL, EVP_R_NO_OPERATION_SET);
        return -1;
    }

    if ((optype != -1) && !(ctx->operation & optype)) {
        EVPerr(EVP_F_EVP_PKEY_CTX_CTRL, EVP_R_INVALID_OPERATION);
        return -1;
    }

 doit:
    ret = ctx->pmeth->ctrl(ctx, cmd, p1, p2);

    if (ret == -2)
        EVPerr(EVP_F_EVP_PKEY_CTX_CTRL, EVP_R_COMMAND_NOT_SUPPORTED);

    return ret;
}
