
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int * sigprovctx; TYPE_4__* signature; } ;
struct TYPE_16__ {TYPE_1__ sig; } ;
struct TYPE_19__ {int operation; TYPE_3__* pmeth; TYPE_2__ op; int * keymgmt; int * pkey; int propquery; int libctx; int * algorithm; } ;
struct TYPE_18__ {int (* sign_init ) (int *,void*) ;int (* verify_init ) (int *,void*) ;int (* verify_recover_init ) (int *,void*) ;int (* freectx ) (int *) ;int prov; int * (* newctx ) (int ) ;} ;
struct TYPE_17__ {int (* sign_init ) (TYPE_5__*) ;int (* verify_init ) (TYPE_5__*) ;int (* verify_recover_init ) (TYPE_5__*) ;int * verify_recover; int * verify; int * sign; } ;
typedef TYPE_4__ EVP_SIGNATURE ;
typedef TYPE_5__ EVP_PKEY_CTX ;


 scalar_t__ EVP_KEYMGMT_provider (int *) ;

 int EVP_PKEY_OP_UNDEFINED ;


 int EVP_R_INITIALIZATION_ERROR ;
 int EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ;
 TYPE_4__* EVP_SIGNATURE_fetch (int ,int *,int ) ;
 int EVP_SIGNATURE_free (TYPE_4__*) ;
 int EVP_SIGNATURE_number (TYPE_4__*) ;
 scalar_t__ EVP_SIGNATURE_provider (TYPE_4__*) ;
 int EVPerr (int ,int ) ;
 void* evp_keymgmt_export_to_provider (int *,int *,int ) ;
 int * evp_keymgmt_fetch_by_number (int ,int,int ) ;
 int evp_pkey_ctx_free_old_ops (TYPE_5__*) ;
 int ossl_provider_ctx (int ) ;
 int * stub1 (int ) ;
 int stub2 (int *,void*) ;
 int stub3 (int *,void*) ;
 int stub4 (int *,void*) ;
 int stub5 (int *) ;
 int stub6 (TYPE_5__*) ;
 int stub7 (TYPE_5__*) ;
 int stub8 (TYPE_5__*) ;

__attribute__((used)) static int evp_pkey_signature_init(EVP_PKEY_CTX *ctx, int operation)
{
    int ret = 0;
    void *provkey = ((void*)0);
    EVP_SIGNATURE *signature = ((void*)0);

    if (ctx == ((void*)0)) {
        EVPerr(0, EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }

    evp_pkey_ctx_free_old_ops(ctx);
    ctx->operation = operation;

    if (ctx->algorithm == ((void*)0))
        goto legacy;






    signature = EVP_SIGNATURE_fetch(ctx->libctx, ctx->algorithm,
                                    ctx->propquery);
    if (signature != ((void*)0) && ctx->keymgmt == ((void*)0)) {
        int name_id = EVP_SIGNATURE_number(signature);

        ctx->keymgmt = evp_keymgmt_fetch_by_number(ctx->libctx, name_id,
                                                   ctx->propquery);
    }

    if (ctx->keymgmt == ((void*)0)
        || signature == ((void*)0)
        || (EVP_KEYMGMT_provider(ctx->keymgmt)
            != EVP_SIGNATURE_provider(signature))) {






        EVP_SIGNATURE_free(signature);
        goto legacy;
    }

    ctx->op.sig.signature = signature;

    if (ctx->pkey != ((void*)0)) {
        provkey =
            evp_keymgmt_export_to_provider(ctx->pkey, ctx->keymgmt, 0);
        if (provkey == ((void*)0)) {
            EVPerr(0, EVP_R_INITIALIZATION_ERROR);
            goto err;
        }
    }
    ctx->op.sig.sigprovctx = signature->newctx(ossl_provider_ctx(signature->prov));
    if (ctx->op.sig.sigprovctx == ((void*)0)) {

        EVPerr(0, EVP_R_INITIALIZATION_ERROR);
        goto err;
    }

    switch (operation) {
    case 130:
        if (signature->sign_init == ((void*)0)) {
            EVPerr(0, EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
            ret = -2;
            goto err;
        }
        ret = signature->sign_init(ctx->op.sig.sigprovctx, provkey);
        break;
    case 129:
        if (signature->verify_init == ((void*)0)) {
            EVPerr(0, EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
            ret = -2;
            goto err;
        }
        ret = signature->verify_init(ctx->op.sig.sigprovctx, provkey);
        break;
    case 128:
        if (signature->verify_recover_init == ((void*)0)) {
            EVPerr(0, EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
            ret = -2;
            goto err;
        }
        ret = signature->verify_recover_init(ctx->op.sig.sigprovctx, provkey);
        break;
    default:
        EVPerr(0, EVP_R_INITIALIZATION_ERROR);
        goto err;
    }

    if (ret <= 0) {
        signature->freectx(ctx->op.sig.sigprovctx);
        ctx->op.sig.sigprovctx = ((void*)0);
        goto err;
    }
    return 1;

 legacy:
    if (ctx->pmeth == ((void*)0)
            || (operation == 130 && ctx->pmeth->sign == ((void*)0))
            || (operation == 129 && ctx->pmeth->verify == ((void*)0))
            || (operation == 128
                && ctx->pmeth->verify_recover == ((void*)0))) {
        EVPerr(0, EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }

    switch (operation) {
    case 130:
        if (ctx->pmeth->sign_init == ((void*)0))
            return 1;
        ret = ctx->pmeth->sign_init(ctx);
        break;
    case 129:
        if (ctx->pmeth->verify_init == ((void*)0))
            return 1;
        ret = ctx->pmeth->verify_init(ctx);
        break;
    case 128:
        if (ctx->pmeth->verify_recover_init == ((void*)0))
            return 1;
        ret = ctx->pmeth->verify_recover_init(ctx);
        break;
    default:
        EVPerr(0, EVP_R_INITIALIZATION_ERROR);
        goto err;
    }
    if (ret <= 0)
        goto err;
    return ret;

 err:
    ctx->operation = EVP_PKEY_OP_UNDEFINED;
    return ret;
}
