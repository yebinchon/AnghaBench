
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_17__ ;


struct TYPE_26__ {scalar_t__ type; } ;
struct TYPE_22__ {int * exchprovctx; TYPE_1__* exchange; } ;
struct TYPE_23__ {TYPE_2__ kex; } ;
struct TYPE_25__ {scalar_t__ operation; TYPE_6__* peerkey; TYPE_4__* pmeth; TYPE_17__* pkey; TYPE_3__ op; int keymgmt; } ;
struct TYPE_24__ {int (* ctrl ) (TYPE_5__*,int ,int,TYPE_6__*) ;int * decrypt; int * encrypt; int * derive; } ;
struct TYPE_21__ {int (* set_peer ) (int *,void*) ;} ;
struct TYPE_20__ {scalar_t__ type; } ;
typedef TYPE_5__ EVP_PKEY_CTX ;
typedef TYPE_6__ EVP_PKEY ;


 int ERR_R_INTERNAL_ERROR ;
 int EVP_F_EVP_PKEY_DERIVE_SET_PEER ;
 int EVP_PKEY_CTRL_PEER_KEY ;
 int EVP_PKEY_CTX_IS_DERIVE_OP (TYPE_5__*) ;
 scalar_t__ EVP_PKEY_OP_DECRYPT ;
 scalar_t__ EVP_PKEY_OP_DERIVE ;
 scalar_t__ EVP_PKEY_OP_ENCRYPT ;
 int EVP_PKEY_cmp_parameters (TYPE_17__*,TYPE_6__*) ;
 int EVP_PKEY_free (TYPE_6__*) ;
 int EVP_PKEY_missing_parameters (TYPE_6__*) ;
 int EVP_PKEY_up_ref (TYPE_6__*) ;
 int EVP_R_DIFFERENT_KEY_TYPES ;
 int EVP_R_DIFFERENT_PARAMETERS ;
 int EVP_R_NO_KEY_SET ;
 int EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ;
 int EVP_R_OPERATON_NOT_INITIALIZED ;
 int EVPerr (int ,int ) ;
 void* evp_keymgmt_export_to_provider (TYPE_6__*,int ,int ) ;
 int stub1 (int *,void*) ;
 int stub2 (TYPE_5__*,int ,int,TYPE_6__*) ;
 int stub3 (TYPE_5__*,int ,int,TYPE_6__*) ;

int EVP_PKEY_derive_set_peer(EVP_PKEY_CTX *ctx, EVP_PKEY *peer)
{
    int ret;
    void *provkey = ((void*)0);

    if (ctx == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_DERIVE_SET_PEER,
               EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }

    if (!EVP_PKEY_CTX_IS_DERIVE_OP(ctx) || ctx->op.kex.exchprovctx == ((void*)0))
        goto legacy;

    if (ctx->op.kex.exchange->set_peer == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_DERIVE_SET_PEER,
               EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }

    provkey = evp_keymgmt_export_to_provider(peer, ctx->keymgmt, 0);
    if (provkey == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_DERIVE_SET_PEER, ERR_R_INTERNAL_ERROR);
        return 0;
    }
    return ctx->op.kex.exchange->set_peer(ctx->op.kex.exchprovctx, provkey);

 legacy:
    if (ctx->pmeth == ((void*)0)
        || !(ctx->pmeth->derive != ((void*)0)
             || ctx->pmeth->encrypt != ((void*)0)
             || ctx->pmeth->decrypt != ((void*)0))
        || ctx->pmeth->ctrl == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_DERIVE_SET_PEER,
               EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }
    if (ctx->operation != EVP_PKEY_OP_DERIVE
        && ctx->operation != EVP_PKEY_OP_ENCRYPT
        && ctx->operation != EVP_PKEY_OP_DECRYPT) {
        EVPerr(EVP_F_EVP_PKEY_DERIVE_SET_PEER,
               EVP_R_OPERATON_NOT_INITIALIZED);
        return -1;
    }

    ret = ctx->pmeth->ctrl(ctx, EVP_PKEY_CTRL_PEER_KEY, 0, peer);

    if (ret <= 0)
        return ret;

    if (ret == 2)
        return 1;

    if (ctx->pkey == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_DERIVE_SET_PEER, EVP_R_NO_KEY_SET);
        return -1;
    }

    if (ctx->pkey->type != peer->type) {
        EVPerr(EVP_F_EVP_PKEY_DERIVE_SET_PEER, EVP_R_DIFFERENT_KEY_TYPES);
        return -1;
    }
    if (!EVP_PKEY_missing_parameters(peer) &&
        !EVP_PKEY_cmp_parameters(ctx->pkey, peer)) {
        EVPerr(EVP_F_EVP_PKEY_DERIVE_SET_PEER, EVP_R_DIFFERENT_PARAMETERS);
        return -1;
    }

    EVP_PKEY_free(ctx->peerkey);
    ctx->peerkey = peer;

    ret = ctx->pmeth->ctrl(ctx, EVP_PKEY_CTRL_PEER_KEY, 1, peer);

    if (ret <= 0) {
        ctx->peerkey = ((void*)0);
        return ret;
    }

    EVP_PKEY_up_ref(peer);
    return 1;
}
