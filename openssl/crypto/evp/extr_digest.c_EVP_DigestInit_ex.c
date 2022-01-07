
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int * signature; } ;
struct TYPE_16__ {TYPE_1__ sig; } ;
struct TYPE_19__ {TYPE_2__ op; } ;
struct TYPE_18__ {scalar_t__ type; scalar_t__ ctx_size; int (* dinit ) (int *) ;int (* init ) (TYPE_3__*) ;int update; int * prov; int * (* newctx ) (int ) ;int (* freectx ) (int *) ;} ;
struct TYPE_17__ {int flags; TYPE_4__ const* digest; TYPE_6__* pctx; int * md_data; int update; int * engine; int * provctx; TYPE_4__ const* fetched_digest; TYPE_4__ const* reqdigest; } ;
typedef TYPE_3__ EVP_MD_CTX ;
typedef TYPE_4__ const EVP_MD ;
typedef int ENGINE ;


 int ENGINE_finish (int *) ;
 TYPE_4__ const* ENGINE_get_digest (int *,scalar_t__) ;
 int * ENGINE_get_digest_engine (scalar_t__) ;
 int ENGINE_init (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_EVP_DIGESTINIT_EX ;
 int EVP_MD_CTX_FLAG_CLEANED ;
 int EVP_MD_CTX_FLAG_NO_INIT ;
 int EVP_MD_CTX_clear_flags (TYPE_3__*,int ) ;
 TYPE_4__ const* EVP_MD_fetch (int *,int ,char*) ;
 int EVP_MD_free (TYPE_4__ const*) ;
 int EVP_PKEY_CTRL_DIGESTINIT ;
 int EVP_PKEY_CTX_IS_SIGNATURE_OP (TYPE_6__*) ;
 int EVP_PKEY_CTX_ctrl (TYPE_6__*,int,int ,int ,int ,TYPE_3__*) ;
 int EVP_PKEY_OP_TYPE_SIG ;
 int EVP_R_INITIALIZATION_ERROR ;
 int EVP_R_NO_DIGEST_SET ;
 int EVPerr (int ,int ) ;
 int OBJ_nid2sn (scalar_t__) ;
 int OPENSSL_clear_free (int *,scalar_t__) ;
 int * OPENSSL_zalloc (scalar_t__) ;
 int ossl_assert (int ) ;
 int ossl_provider_ctx (int *) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int * stub3 (int ) ;
 int stub4 (int *) ;
 int stub5 (TYPE_3__*) ;

int EVP_DigestInit_ex(EVP_MD_CTX *ctx, const EVP_MD *type, ENGINE *impl)
{

    ENGINE *tmpimpl = ((void*)0);


    EVP_MD_CTX_clear_flags(ctx, EVP_MD_CTX_FLAG_CLEANED);

    if (ctx->provctx != ((void*)0)) {
        if (!ossl_assert(ctx->digest != ((void*)0))) {
            EVPerr(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
            return 0;
        }
        if (ctx->digest->freectx != ((void*)0))
            ctx->digest->freectx(ctx->provctx);
        ctx->provctx = ((void*)0);
    }

    if (type != ((void*)0))
        ctx->reqdigest = type;
    if (ctx->engine && ctx->digest &&
        (type == ((void*)0) || (type->type == ctx->digest->type)))
        goto skip_to_init;

    if (type != ((void*)0)) {





        ENGINE_finish(ctx->engine);
        ctx->engine = ((void*)0);
    }

    if (type != ((void*)0) && impl == ((void*)0))
        tmpimpl = ENGINE_get_digest_engine(type->type);






    if (ctx->engine != ((void*)0)
            || impl != ((void*)0)

            || tmpimpl != ((void*)0)

            || (ctx->flags & EVP_MD_CTX_FLAG_NO_INIT) != 0) {
        if (ctx->digest == ctx->fetched_digest)
            ctx->digest = ((void*)0);
        EVP_MD_free(ctx->fetched_digest);
        ctx->fetched_digest = ((void*)0);
        goto legacy;
    }

    if (ctx->digest != ((void*)0) && ctx->digest->ctx_size > 0) {
        OPENSSL_clear_free(ctx->md_data, ctx->digest->ctx_size);
        ctx->md_data = ((void*)0);
    }



    if (type->prov == ((void*)0)) {





        EVP_MD *provmd = EVP_MD_fetch(((void*)0), OBJ_nid2sn(type->type), "");

        if (provmd == ((void*)0)) {
            EVPerr(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
            return 0;
        }
        type = provmd;
        EVP_MD_free(ctx->fetched_digest);
        ctx->fetched_digest = provmd;

    }

    if (ctx->provctx != ((void*)0) && ctx->digest != ((void*)0) && ctx->digest != type) {
        if (ctx->digest->freectx != ((void*)0))
            ctx->digest->freectx(ctx->provctx);
        ctx->provctx = ((void*)0);
    }
    ctx->digest = type;
    if (ctx->provctx == ((void*)0)) {
        ctx->provctx = ctx->digest->newctx(ossl_provider_ctx(type->prov));
        if (ctx->provctx == ((void*)0)) {
            EVPerr(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
            return 0;
        }
    }

    if (ctx->digest->dinit == ((void*)0)) {
        EVPerr(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
        return 0;
    }

    return ctx->digest->dinit(ctx->provctx);


 legacy:


    if (type) {
        if (impl != ((void*)0)) {
            if (!ENGINE_init(impl)) {
                EVPerr(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
                return 0;
            }
        } else {

            impl = tmpimpl;
        }
        if (impl != ((void*)0)) {

            const EVP_MD *d = ENGINE_get_digest(impl, type->type);

            if (d == ((void*)0)) {
                EVPerr(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
                ENGINE_finish(impl);
                return 0;
            }

            type = d;




            ctx->engine = impl;
        } else
            ctx->engine = ((void*)0);
    } else {
        if (!ctx->digest) {
            EVPerr(EVP_F_EVP_DIGESTINIT_EX, EVP_R_NO_DIGEST_SET);
            return 0;
        }
        type = ctx->digest;
    }

    if (ctx->digest != type) {
        if (ctx->digest && ctx->digest->ctx_size) {
            OPENSSL_clear_free(ctx->md_data, ctx->digest->ctx_size);
            ctx->md_data = ((void*)0);
        }
        ctx->digest = type;
        if (!(ctx->flags & EVP_MD_CTX_FLAG_NO_INIT) && type->ctx_size) {
            ctx->update = type->update;
            ctx->md_data = OPENSSL_zalloc(type->ctx_size);
            if (ctx->md_data == ((void*)0)) {
                EVPerr(EVP_F_EVP_DIGESTINIT_EX, ERR_R_MALLOC_FAILURE);
                return 0;
            }
        }
    }

 skip_to_init:






    if (ctx->pctx != ((void*)0)
            && (!EVP_PKEY_CTX_IS_SIGNATURE_OP(ctx->pctx)
                 || ctx->pctx->op.sig.signature == ((void*)0))) {
        int r;
        r = EVP_PKEY_CTX_ctrl(ctx->pctx, -1, EVP_PKEY_OP_TYPE_SIG,
                              EVP_PKEY_CTRL_DIGESTINIT, 0, ctx);
        if (r <= 0 && (r != -2))
            return 0;
    }

    if (ctx->flags & EVP_MD_CTX_FLAG_NO_INIT)
        return 1;
    return ctx->digest->init(ctx);
}
