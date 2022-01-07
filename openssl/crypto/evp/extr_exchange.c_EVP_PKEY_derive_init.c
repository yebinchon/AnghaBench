
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {int (* init ) (int *,void*) ;int prov; int * (* newctx ) (int ) ;} ;
struct TYPE_13__ {int * exchprovctx; TYPE_5__* exchange; } ;
struct TYPE_14__ {TYPE_1__ kex; } ;
struct TYPE_16__ {void* operation; TYPE_3__* pmeth; TYPE_2__ op; int * keymgmt; int * pkey; int propquery; int libctx; int * algorithm; int * engine; } ;
struct TYPE_15__ {int (* derive_init ) (TYPE_4__*) ;int * derive; } ;
typedef TYPE_4__ EVP_PKEY_CTX ;
typedef TYPE_5__ EVP_KEYEXCH ;


 TYPE_5__* EVP_KEYEXCH_fetch (int ,int *,int ) ;
 int EVP_KEYEXCH_free (TYPE_5__*) ;
 int EVP_KEYEXCH_number (TYPE_5__*) ;
 scalar_t__ EVP_KEYEXCH_provider (TYPE_5__*) ;
 scalar_t__ EVP_KEYMGMT_provider (int *) ;
 void* EVP_PKEY_OP_DERIVE ;
 void* EVP_PKEY_OP_UNDEFINED ;
 int EVP_R_INITIALIZATION_ERROR ;
 int EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ;
 int EVPerr (int ,int ) ;
 void* evp_keymgmt_export_to_provider (int *,int *,int ) ;
 int * evp_keymgmt_fetch_by_number (int ,int,int ) ;
 int evp_pkey_ctx_free_old_ops (TYPE_4__*) ;
 int ossl_provider_ctx (int ) ;
 int * stub1 (int ) ;
 int stub2 (int *,void*) ;
 int stub3 (TYPE_4__*) ;

int EVP_PKEY_derive_init(EVP_PKEY_CTX *ctx)
{
    int ret;
    void *provkey = ((void*)0);
    EVP_KEYEXCH *exchange = ((void*)0);

    if (ctx == ((void*)0)) {
        EVPerr(0, EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }

    evp_pkey_ctx_free_old_ops(ctx);
    ctx->operation = EVP_PKEY_OP_DERIVE;

    if (ctx->engine != ((void*)0) || ctx->algorithm == ((void*)0))
        goto legacy;






    exchange = EVP_KEYEXCH_fetch(ctx->libctx, ctx->algorithm, ctx->propquery);
    if (exchange != ((void*)0) && ctx->keymgmt == ((void*)0)) {
        int name_id = EVP_KEYEXCH_number(exchange);

        ctx->keymgmt =
            evp_keymgmt_fetch_by_number(ctx->libctx, name_id, ctx->propquery);
    }

    if (ctx->keymgmt == ((void*)0)
        || exchange == ((void*)0)
        || (EVP_KEYMGMT_provider(ctx->keymgmt)
            != EVP_KEYEXCH_provider(exchange))) {






        EVP_KEYEXCH_free(exchange);
        goto legacy;
    }


    ctx->op.kex.exchange = exchange;

    if (ctx->pkey != ((void*)0)) {
        provkey = evp_keymgmt_export_to_provider(ctx->pkey, ctx->keymgmt, 0);
        if (provkey == ((void*)0)) {
            EVPerr(0, EVP_R_INITIALIZATION_ERROR);
            goto err;
        }
    }
    ctx->op.kex.exchprovctx = exchange->newctx(ossl_provider_ctx(exchange->prov));
    if (ctx->op.kex.exchprovctx == ((void*)0)) {

        EVPerr(0, EVP_R_INITIALIZATION_ERROR);
        goto err;
    }
    ret = exchange->init(ctx->op.kex.exchprovctx, provkey);

    return ret ? 1 : 0;
 err:
    ctx->operation = EVP_PKEY_OP_UNDEFINED;
    return 0;

 legacy:
    if (ctx == ((void*)0) || ctx->pmeth == ((void*)0) || ctx->pmeth->derive == ((void*)0)) {
        EVPerr(0, EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }

    if (ctx->pmeth->derive_init == ((void*)0))
        return 1;
    ret = ctx->pmeth->derive_init(ctx);
    if (ret <= 0)
        ctx->operation = EVP_PKEY_OP_UNDEFINED;
    return ret;
}
