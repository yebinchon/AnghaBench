#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/ * signature; } ;
struct TYPE_16__ {TYPE_1__ sig; } ;
struct TYPE_19__ {TYPE_2__ op; } ;
struct TYPE_18__ {scalar_t__ type; scalar_t__ ctx_size; int (* dinit ) (int /*<<< orphan*/ *) ;int (* init ) (TYPE_3__*) ;int /*<<< orphan*/  update; int /*<<< orphan*/ * prov; int /*<<< orphan*/ * (* newctx ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* freectx ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_17__ {int flags; TYPE_4__ const* digest; TYPE_6__* pctx; int /*<<< orphan*/ * md_data; int /*<<< orphan*/  update; int /*<<< orphan*/ * engine; int /*<<< orphan*/ * provctx; TYPE_4__ const* fetched_digest; TYPE_4__ const* reqdigest; } ;
typedef  TYPE_3__ EVP_MD_CTX ;
typedef  TYPE_4__ const EVP_MD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__ const* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_F_EVP_DIGESTINIT_EX ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_CLEANED ; 
 int EVP_MD_CTX_FLAG_NO_INIT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__ const* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_DIGESTINIT ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int FUNC8 (TYPE_6__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  EVP_PKEY_OP_TYPE_SIG ; 
 int /*<<< orphan*/  EVP_R_INITIALIZATION_ERROR ; 
 int /*<<< orphan*/  EVP_R_NO_DIGEST_SET ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_3__*) ; 

int FUNC20(EVP_MD_CTX *ctx, const EVP_MD *type, ENGINE *impl)
{
#if !defined(OPENSSL_NO_ENGINE) && !defined(FIPS_MODE)
    ENGINE *tmpimpl = NULL;
#endif

    FUNC4(ctx, EVP_MD_CTX_FLAG_CLEANED);

    if (ctx->provctx != NULL) {
        if (!FUNC13(ctx->digest != NULL)) {
            FUNC9(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
            return 0;
        }
        if (ctx->digest->freectx != NULL)
            ctx->digest->freectx(ctx->provctx);
        ctx->provctx = NULL;
    }

    if (type != NULL)
        ctx->reqdigest = type;

    /* TODO(3.0): Legacy work around code below. Remove this */
#if !defined(OPENSSL_NO_ENGINE) && !defined(FIPS_MODE)
    /*
     * Whether it's nice or not, "Inits" can be used on "Final"'d contexts so
     * this context may already have an ENGINE! Try to avoid releasing the
     * previous handle, re-querying for an ENGINE, and having a
     * reinitialisation, when it may all be unnecessary.
     */
    if (ctx->engine && ctx->digest &&
        (type == NULL || (type->type == ctx->digest->type)))
        goto skip_to_init;

    if (type != NULL) {
        /*
         * Ensure an ENGINE left lying around from last time is cleared (the
         * previous check attempted to avoid this if the same ENGINE and
         * EVP_MD could be used).
         */
        FUNC0(ctx->engine);
        ctx->engine = NULL;
    }

    if (type != NULL && impl == NULL)
        tmpimpl = FUNC2(type->type);
#endif

    /*
     * If there are engines involved or EVP_MD_CTX_FLAG_NO_INIT is set then we
     * should use legacy handling for now.
     */
    if (ctx->engine != NULL
            || impl != NULL
#if !defined(OPENSSL_NO_ENGINE) && !defined(FIPS_MODE)
            || tmpimpl != NULL
#endif
            || (ctx->flags & EVP_MD_CTX_FLAG_NO_INIT) != 0) {
        if (ctx->digest == ctx->fetched_digest)
            ctx->digest = NULL;
        FUNC6(ctx->fetched_digest);
        ctx->fetched_digest = NULL;
        goto legacy;
    }

    if (ctx->digest != NULL && ctx->digest->ctx_size > 0) {
        FUNC11(ctx->md_data, ctx->digest->ctx_size);
        ctx->md_data = NULL;
    }

    /* TODO(3.0): Start of non-legacy code below */

    if (type->prov == NULL) {
#ifdef FIPS_MODE
        /* We only do explict fetches inside the FIPS module */
        EVPerr(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
        return 0;
#else
        EVP_MD *provmd = FUNC5(NULL, FUNC10(type->type), "");

        if (provmd == NULL) {
            FUNC9(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
            return 0;
        }
        type = provmd;
        FUNC6(ctx->fetched_digest);
        ctx->fetched_digest = provmd;
#endif
    }

    if (ctx->provctx != NULL && ctx->digest != NULL && ctx->digest != type) {
        if (ctx->digest->freectx != NULL)
            ctx->digest->freectx(ctx->provctx);
        ctx->provctx = NULL;
    }
    ctx->digest = type;
    if (ctx->provctx == NULL) {
        ctx->provctx = ctx->digest->newctx(FUNC14(type->prov));
        if (ctx->provctx == NULL) {
            FUNC9(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
            return 0;
        }
    }

    if (ctx->digest->dinit == NULL) {
        FUNC9(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
        return 0;
    }

    return ctx->digest->dinit(ctx->provctx);

    /* TODO(3.0): Remove legacy code below */
 legacy:

#if !defined(OPENSSL_NO_ENGINE) && !defined(FIPS_MODE)
    if (type) {
        if (impl != NULL) {
            if (!FUNC3(impl)) {
                FUNC9(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
                return 0;
            }
        } else {
            /* Ask if an ENGINE is reserved for this job */
            impl = tmpimpl;
        }
        if (impl != NULL) {
            /* There's an ENGINE for this job ... (apparently) */
            const EVP_MD *d = FUNC1(impl, type->type);

            if (d == NULL) {
                FUNC9(EVP_F_EVP_DIGESTINIT_EX, EVP_R_INITIALIZATION_ERROR);
                FUNC0(impl);
                return 0;
            }
            /* We'll use the ENGINE's private digest definition */
            type = d;
            /*
             * Store the ENGINE functional reference so we know 'type' came
             * from an ENGINE and we need to release it when done.
             */
            ctx->engine = impl;
        } else
            ctx->engine = NULL;
    } else {
        if (!ctx->digest) {
            FUNC9(EVP_F_EVP_DIGESTINIT_EX, EVP_R_NO_DIGEST_SET);
            return 0;
        }
        type = ctx->digest;
    }
#endif
    if (ctx->digest != type) {
        if (ctx->digest && ctx->digest->ctx_size) {
            FUNC11(ctx->md_data, ctx->digest->ctx_size);
            ctx->md_data = NULL;
        }
        ctx->digest = type;
        if (!(ctx->flags & EVP_MD_CTX_FLAG_NO_INIT) && type->ctx_size) {
            ctx->update = type->update;
            ctx->md_data = FUNC12(type->ctx_size);
            if (ctx->md_data == NULL) {
                FUNC9(EVP_F_EVP_DIGESTINIT_EX, ERR_R_MALLOC_FAILURE);
                return 0;
            }
        }
    }
#if !defined(OPENSSL_NO_ENGINE) && !defined(FIPS_MODE)
 skip_to_init:
#endif
#ifndef FIPS_MODE
    /*
     * TODO(3.0): Temporarily no support for EVP_DigestSign* inside FIPS module
     * or when using providers.
     */
    if (ctx->pctx != NULL
            && (!FUNC7(ctx->pctx)
                 || ctx->pctx->op.sig.signature == NULL)) {
        int r;
        r = FUNC8(ctx->pctx, -1, EVP_PKEY_OP_TYPE_SIG,
                              EVP_PKEY_CTRL_DIGESTINIT, 0, ctx);
        if (r <= 0 && (r != -2))
            return 0;
    }
#endif
    if (ctx->flags & EVP_MD_CTX_FLAG_NO_INIT)
        return 1;
    return ctx->digest->init(ctx);
}