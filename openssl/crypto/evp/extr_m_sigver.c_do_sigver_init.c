
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


struct TYPE_39__ {TYPE_7__* pctx; void* update; int const* fetched_digest; int const* reqdigest; int * provctx; TYPE_1__* digest; } ;
struct TYPE_32__ {int * ptr; } ;
struct TYPE_38__ {TYPE_2__ pkey; } ;
struct TYPE_33__ {int * sigprovctx; TYPE_6__* signature; } ;
struct TYPE_34__ {TYPE_3__ sig; } ;
struct TYPE_37__ {TYPE_5__* pmeth; void* operation; TYPE_4__ op; int libctx; int * keymgmt; int pkey; int propquery; int * algorithm; } ;
struct TYPE_36__ {int (* digest_verify_init ) (int *,char const*,char const*,void*) ;int (* digest_sign_init ) (int *,char const*,char const*,void*) ;int prov; int * (* newctx ) (int ) ;} ;
struct TYPE_35__ {int flags; scalar_t__ (* verifyctx_init ) (TYPE_7__*,TYPE_9__*) ;scalar_t__ digestverify; scalar_t__ (* signctx_init ) (TYPE_7__*,TYPE_9__*) ;scalar_t__ digestsign; int (* digest_custom ) (TYPE_7__*,TYPE_9__*) ;} ;
struct TYPE_31__ {int (* freectx ) (int *) ;} ;
typedef TYPE_6__ EVP_SIGNATURE ;
typedef TYPE_7__ EVP_PKEY_CTX ;
typedef TYPE_8__ EVP_PKEY ;
typedef TYPE_9__ EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int ENGINE ;


 int ERR_LIB_EVP ;
 int ERR_raise (int ,int ) ;
 int EVP_DigestInit_ex (TYPE_9__*,int const*,int *) ;
 int EVP_F_DO_SIGVER_INIT ;
 scalar_t__ EVP_KEYMGMT_provider (int *) ;
 int const* EVP_MD_fetch (int ,char const*,char const*) ;
 char* EVP_MD_name (int const*) ;
 TYPE_7__* EVP_PKEY_CTX_new (TYPE_8__*,int *) ;
 scalar_t__ EVP_PKEY_CTX_set_signature_md (TYPE_7__*,int const*) ;
 int EVP_PKEY_FLAG_SIGCTX_CUSTOM ;
 void* EVP_PKEY_OP_SIGN ;
 void* EVP_PKEY_OP_SIGNCTX ;
 void* EVP_PKEY_OP_UNDEFINED ;
 void* EVP_PKEY_OP_VERIFY ;
 void* EVP_PKEY_OP_VERIFYCTX ;
 scalar_t__ EVP_PKEY_get_default_digest_nid (TYPE_8__*,int*) ;
 scalar_t__ EVP_PKEY_sign_init (TYPE_7__*) ;
 scalar_t__ EVP_PKEY_verify_init (TYPE_7__*) ;
 int EVP_R_INITIALIZATION_ERROR ;
 int EVP_R_NO_DEFAULT_DIGEST ;
 TYPE_6__* EVP_SIGNATURE_fetch (int ,int *,int ) ;
 int EVP_SIGNATURE_free (TYPE_6__*) ;
 int EVP_SIGNATURE_number (TYPE_6__*) ;
 scalar_t__ EVP_SIGNATURE_provider (TYPE_6__*) ;
 int * EVP_get_digestbynid (int) ;
 int EVPerr (int ,int ) ;
 char* OBJ_nid2sn (int) ;
 void* evp_keymgmt_export_to_provider (int ,int *,int ) ;
 int * evp_keymgmt_fetch_by_number (int ,int,int ) ;
 int evp_pkey_ctx_free_old_ops (TYPE_7__*) ;
 int ossl_assert (int ) ;
 int ossl_provider_ctx (int ) ;
 int stub1 (int *) ;
 int * stub2 (int ) ;
 int stub3 (int *,char const*,char const*,void*) ;
 int stub4 (int *,char const*,char const*,void*) ;
 scalar_t__ stub5 (TYPE_7__*,TYPE_9__*) ;
 scalar_t__ stub6 (TYPE_7__*,TYPE_9__*) ;
 int stub7 (TYPE_7__*,TYPE_9__*) ;
 void* update ;

__attribute__((used)) static int do_sigver_init(EVP_MD_CTX *ctx, EVP_PKEY_CTX **pctx,
                          const EVP_MD *type, const char *mdname,
                          const char *props, ENGINE *e, EVP_PKEY *pkey,
                          int ver)
{
    EVP_PKEY_CTX *locpctx = ((void*)0);
    EVP_SIGNATURE *signature = ((void*)0);
    void *provkey = ((void*)0);
    int ret;

    if (ctx->provctx != ((void*)0)) {
        if (!ossl_assert(ctx->digest != ((void*)0))) {
            ERR_raise(ERR_LIB_EVP, EVP_R_INITIALIZATION_ERROR);
            return 0;
        }
        if (ctx->digest->freectx != ((void*)0))
            ctx->digest->freectx(ctx->provctx);
        ctx->provctx = ((void*)0);
    }

    if (ctx->pctx == ((void*)0))
        ctx->pctx = EVP_PKEY_CTX_new(pkey, e);
    if (ctx->pctx == ((void*)0))
        return 0;

    locpctx = ctx->pctx;
    evp_pkey_ctx_free_old_ops(locpctx);

    if (locpctx->algorithm == ((void*)0))
        goto legacy;

    if (mdname == ((void*)0)) {
        if (type != ((void*)0)) {
            mdname = EVP_MD_name(type);
        } else if (pkey != ((void*)0)) {




            if (pkey->pkey.ptr != ((void*)0)) {
                int def_nid;
                if (EVP_PKEY_get_default_digest_nid(pkey, &def_nid) > 0)
                    mdname = OBJ_nid2sn(def_nid);
            }
        }
    }






    signature = EVP_SIGNATURE_fetch(locpctx->libctx, locpctx->algorithm,
                                    locpctx->propquery);
    if (signature != ((void*)0) && locpctx->keymgmt == ((void*)0)) {
        int name_id = EVP_SIGNATURE_number(signature);

        locpctx->keymgmt =
            evp_keymgmt_fetch_by_number(locpctx->libctx, name_id,
                                        locpctx->propquery);
    }

    if (locpctx->keymgmt == ((void*)0)
        || signature == ((void*)0)
        || (EVP_KEYMGMT_provider(locpctx->keymgmt)
            != EVP_SIGNATURE_provider(signature))) {






        EVP_SIGNATURE_free(signature);
        goto legacy;
    }



    locpctx->op.sig.signature = signature;

    locpctx->operation = ver ? EVP_PKEY_OP_VERIFYCTX
                             : EVP_PKEY_OP_SIGNCTX;

    locpctx->op.sig.sigprovctx
        = signature->newctx(ossl_provider_ctx(signature->prov));
    if (locpctx->op.sig.sigprovctx == ((void*)0)) {
        ERR_raise(ERR_LIB_EVP, EVP_R_INITIALIZATION_ERROR);
        goto err;
    }
    provkey =
        evp_keymgmt_export_to_provider(locpctx->pkey, locpctx->keymgmt, 0);
    if (provkey == ((void*)0)) {
        ERR_raise(ERR_LIB_EVP, EVP_R_INITIALIZATION_ERROR);
        goto err;
    }

    if (type != ((void*)0)) {
        ctx->reqdigest = type;
    } else {






        ctx->reqdigest = ctx->fetched_digest =
            EVP_MD_fetch(locpctx->libctx, mdname, props);
    }

    if (ver) {
        if (signature->digest_verify_init == ((void*)0)) {
            ERR_raise(ERR_LIB_EVP, EVP_R_INITIALIZATION_ERROR);
            goto err;
        }
        ret = signature->digest_verify_init(locpctx->op.sig.sigprovctx,
                                            mdname, props, provkey);
    } else {
        if (signature->digest_sign_init == ((void*)0)) {
            ERR_raise(ERR_LIB_EVP, EVP_R_INITIALIZATION_ERROR);
            goto err;
        }
        ret = signature->digest_sign_init(locpctx->op.sig.sigprovctx,
                                          mdname, props, provkey);
    }

    return ret ? 1 : 0;
 err:
    evp_pkey_ctx_free_old_ops(locpctx);
    locpctx->operation = EVP_PKEY_OP_UNDEFINED;
    return 0;

 legacy:
    if (!(ctx->pctx->pmeth->flags & EVP_PKEY_FLAG_SIGCTX_CUSTOM)) {

        if (type == ((void*)0)) {
            int def_nid;
            if (EVP_PKEY_get_default_digest_nid(pkey, &def_nid) > 0)
                type = EVP_get_digestbynid(def_nid);
        }

        if (type == ((void*)0)) {
            EVPerr(EVP_F_DO_SIGVER_INIT, EVP_R_NO_DEFAULT_DIGEST);
            return 0;
        }
    }

    if (ver) {
        if (ctx->pctx->pmeth->verifyctx_init) {
            if (ctx->pctx->pmeth->verifyctx_init(ctx->pctx, ctx) <= 0)
                return 0;
            ctx->pctx->operation = EVP_PKEY_OP_VERIFYCTX;
        } else if (ctx->pctx->pmeth->digestverify != 0) {
            ctx->pctx->operation = EVP_PKEY_OP_VERIFY;
            ctx->update = update;
        } else if (EVP_PKEY_verify_init(ctx->pctx) <= 0) {
            return 0;
        }
    } else {
        if (ctx->pctx->pmeth->signctx_init) {
            if (ctx->pctx->pmeth->signctx_init(ctx->pctx, ctx) <= 0)
                return 0;
            ctx->pctx->operation = EVP_PKEY_OP_SIGNCTX;
        } else if (ctx->pctx->pmeth->digestsign != 0) {
            ctx->pctx->operation = EVP_PKEY_OP_SIGN;
            ctx->update = update;
        } else if (EVP_PKEY_sign_init(ctx->pctx) <= 0) {
            return 0;
        }
    }
    if (EVP_PKEY_CTX_set_signature_md(ctx->pctx, type) <= 0)
        return 0;
    if (pctx)
        *pctx = ctx->pctx;
    if (ctx->pctx->pmeth->flags & EVP_PKEY_FLAG_SIGCTX_CUSTOM)
        return 1;
    if (!EVP_DigestInit_ex(ctx, type, e))
        return 0;




    if (ctx->pctx->pmeth->digest_custom != ((void*)0))
        return ctx->pctx->pmeth->digest_custom(ctx->pctx, ctx);

    return 1;
}
