#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_9__ ;
typedef  struct TYPE_38__   TYPE_8__ ;
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_39__ {TYPE_7__* pctx; void* update; int /*<<< orphan*/  const* fetched_digest; int /*<<< orphan*/  const* reqdigest; int /*<<< orphan*/ * provctx; TYPE_1__* digest; } ;
struct TYPE_32__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_38__ {TYPE_2__ pkey; } ;
struct TYPE_33__ {int /*<<< orphan*/ * sigprovctx; TYPE_6__* signature; } ;
struct TYPE_34__ {TYPE_3__ sig; } ;
struct TYPE_37__ {TYPE_5__* pmeth; void* operation; TYPE_4__ op; int /*<<< orphan*/  libctx; int /*<<< orphan*/ * keymgmt; int /*<<< orphan*/  pkey; int /*<<< orphan*/  propquery; int /*<<< orphan*/ * algorithm; } ;
struct TYPE_36__ {int (* digest_verify_init ) (int /*<<< orphan*/ *,char const*,char const*,void*) ;int (* digest_sign_init ) (int /*<<< orphan*/ *,char const*,char const*,void*) ;int /*<<< orphan*/  prov; int /*<<< orphan*/ * (* newctx ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_35__ {int flags; scalar_t__ (* verifyctx_init ) (TYPE_7__*,TYPE_9__*) ;scalar_t__ digestverify; scalar_t__ (* signctx_init ) (TYPE_7__*,TYPE_9__*) ;scalar_t__ digestsign; int (* digest_custom ) (TYPE_7__*,TYPE_9__*) ;} ;
struct TYPE_31__ {int /*<<< orphan*/  (* freectx ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_6__ EVP_SIGNATURE ;
typedef  TYPE_7__ EVP_PKEY_CTX ;
typedef  TYPE_8__ EVP_PKEY ;
typedef  TYPE_9__ EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_EVP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_F_DO_SIGVER_INIT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ ,char const*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*) ; 
 TYPE_7__* FUNC5 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_7__*,int /*<<< orphan*/  const*) ; 
 int EVP_PKEY_FLAG_SIGCTX_CUSTOM ; 
 void* EVP_PKEY_OP_SIGN ; 
 void* EVP_PKEY_OP_SIGNCTX ; 
 void* EVP_PKEY_OP_UNDEFINED ; 
 void* EVP_PKEY_OP_VERIFY ; 
 void* EVP_PKEY_OP_VERIFYCTX ; 
 scalar_t__ FUNC7 (TYPE_8__*,int*) ; 
 scalar_t__ FUNC8 (TYPE_7__*) ; 
 scalar_t__ FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  EVP_R_INITIALIZATION_ERROR ; 
 int /*<<< orphan*/  EVP_R_NO_DEFAULT_DIGEST ; 
 TYPE_6__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int FUNC12 (TYPE_6__*) ; 
 scalar_t__ FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC16 (int) ; 
 void* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ *,char const*,char const*,void*) ; 
 int FUNC25 (int /*<<< orphan*/ *,char const*,char const*,void*) ; 
 scalar_t__ FUNC26 (TYPE_7__*,TYPE_9__*) ; 
 scalar_t__ FUNC27 (TYPE_7__*,TYPE_9__*) ; 
 int FUNC28 (TYPE_7__*,TYPE_9__*) ; 
 void* update ; 

__attribute__((used)) static int FUNC29(EVP_MD_CTX *ctx, EVP_PKEY_CTX **pctx,
                          const EVP_MD *type, const char *mdname,
                          const char *props, ENGINE *e, EVP_PKEY *pkey,
                          int ver)
{
    EVP_PKEY_CTX *locpctx = NULL;
    EVP_SIGNATURE *signature = NULL;
    void *provkey = NULL;
    int ret;

    if (ctx->provctx != NULL) {
        if (!FUNC20(ctx->digest != NULL)) {
            FUNC0(ERR_LIB_EVP, EVP_R_INITIALIZATION_ERROR);
            return 0;
        }
        if (ctx->digest->freectx != NULL)
            ctx->digest->freectx(ctx->provctx);
        ctx->provctx = NULL;
    }

    if (ctx->pctx == NULL)
        ctx->pctx = FUNC5(pkey, e);
    if (ctx->pctx == NULL)
        return 0;

    locpctx = ctx->pctx;
    FUNC19(locpctx);

    if (locpctx->algorithm == NULL)
        goto legacy;

    if (mdname == NULL) {
        if (type != NULL) {
            mdname = FUNC4(type);
        } else if (pkey != NULL) {
            /*
             * TODO(v3.0) work out a better way for EVP_PKEYs with no legacy
             * component.
             */
            if (pkey->pkey.ptr != NULL) {
                int def_nid;
                if (FUNC7(pkey, &def_nid) > 0)
                    mdname = FUNC16(def_nid);
            }
        }
    }

    /*
     * Because we cleared out old ops, we shouldn't need to worry about
     * checking if signature is already there.  Keymgmt is a different
     * matter, as it isn't tied to a specific EVP_PKEY op.
     */
    signature = FUNC10(locpctx->libctx, locpctx->algorithm,
                                    locpctx->propquery);
    if (signature != NULL && locpctx->keymgmt == NULL) {
        int name_id = FUNC12(signature);

        locpctx->keymgmt =
            FUNC18(locpctx->libctx, name_id,
                                        locpctx->propquery);
    }

    if (locpctx->keymgmt == NULL
        || signature == NULL
        || (FUNC2(locpctx->keymgmt)
            != FUNC13(signature))) {
        /*
         * We don't have the full support we need with provided methods,
         * let's go see if legacy does.  Also, we don't need to free
         * ctx->keymgmt here, as it's not necessarily tied to this
         * operation.  It will be freed by EVP_PKEY_CTX_free().
         */
        FUNC11(signature);
        goto legacy;
    }

    /* No more legacy from here down to legacy: */

    locpctx->op.sig.signature = signature;

    locpctx->operation = ver ? EVP_PKEY_OP_VERIFYCTX
                             : EVP_PKEY_OP_SIGNCTX;

    locpctx->op.sig.sigprovctx
        = signature->newctx(FUNC21(signature->prov));
    if (locpctx->op.sig.sigprovctx == NULL) {
        FUNC0(ERR_LIB_EVP,  EVP_R_INITIALIZATION_ERROR);
        goto err;
    }
    provkey =
        FUNC17(locpctx->pkey, locpctx->keymgmt, 0);
    if (provkey == NULL) {
        FUNC0(ERR_LIB_EVP, EVP_R_INITIALIZATION_ERROR);
        goto err;
    }

    if (type != NULL) {
        ctx->reqdigest = type;
    } else {
        /*
         * This might be requested by a later call to EVP_MD_CTX_md(). In that
         * case the "explicit fetch" rules apply for that function (as per
         * man pages), i.e. the ref count is not updated so the EVP_MD should
         * not be used beyound the lifetime of the EVP_MD_CTX.
         */
        ctx->reqdigest = ctx->fetched_digest =
            FUNC3(locpctx->libctx, mdname, props);
    }

    if (ver) {
        if (signature->digest_verify_init == NULL) {
            FUNC0(ERR_LIB_EVP, EVP_R_INITIALIZATION_ERROR);
            goto err;
        }
        ret = signature->digest_verify_init(locpctx->op.sig.sigprovctx,
                                            mdname, props, provkey);
    } else {
        if (signature->digest_sign_init == NULL) {
            FUNC0(ERR_LIB_EVP, EVP_R_INITIALIZATION_ERROR);
            goto err;
        }
        ret = signature->digest_sign_init(locpctx->op.sig.sigprovctx,
                                          mdname, props, provkey);
    }

    return ret ? 1 : 0;
 err:
    FUNC19(locpctx);
    locpctx->operation = EVP_PKEY_OP_UNDEFINED;
    return 0;

 legacy:
    if (!(ctx->pctx->pmeth->flags & EVP_PKEY_FLAG_SIGCTX_CUSTOM)) {

        if (type == NULL) {
            int def_nid;
            if (FUNC7(pkey, &def_nid) > 0)
                type = FUNC14(def_nid);
        }

        if (type == NULL) {
            FUNC15(EVP_F_DO_SIGVER_INIT, EVP_R_NO_DEFAULT_DIGEST);
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
        } else if (FUNC9(ctx->pctx) <= 0) {
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
        } else if (FUNC8(ctx->pctx) <= 0) {
            return 0;
        }
    }
    if (FUNC6(ctx->pctx, type) <= 0)
        return 0;
    if (pctx)
        *pctx = ctx->pctx;
    if (ctx->pctx->pmeth->flags & EVP_PKEY_FLAG_SIGCTX_CUSTOM)
        return 1;
    if (!FUNC1(ctx, type, e))
        return 0;
    /*
     * This indicates the current algorithm requires
     * special treatment before hashing the tbs-message.
     */
    if (ctx->pctx->pmeth->digest_custom != NULL)
        return ctx->pctx->pmeth->digest_custom(ctx->pctx, ctx);

    return 1;
}