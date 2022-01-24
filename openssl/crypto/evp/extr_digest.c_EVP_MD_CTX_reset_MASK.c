#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  engine; TYPE_1__* digest; scalar_t__ md_data; int /*<<< orphan*/ * provctx; int /*<<< orphan*/ * reqdigest; int /*<<< orphan*/ * fetched_digest; int /*<<< orphan*/  pctx; } ;
struct TYPE_8__ {scalar_t__ ctx_size; int /*<<< orphan*/  (* cleanup ) (TYPE_2__*) ;int /*<<< orphan*/  (* freectx ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_CLEANED ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_KEEP_PKEY_CTX ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_REUSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

int FUNC9(EVP_MD_CTX *ctx)
{
    if (ctx == NULL)
        return 1;

#ifndef FIPS_MODE
    /* TODO(3.0): Temporarily no support for EVP_DigestSign* in FIPS module */
    /*
     * pctx should be freed by the user of EVP_MD_CTX
     * if EVP_MD_CTX_FLAG_KEEP_PKEY_CTX is set
     */
    if (!FUNC2(ctx, EVP_MD_CTX_FLAG_KEEP_PKEY_CTX))
        FUNC4(ctx->pctx);
#endif

    FUNC3(ctx->fetched_digest);
    ctx->fetched_digest = NULL;
    ctx->reqdigest = NULL;

    if (ctx->provctx != NULL) {
        if (ctx->digest->freectx != NULL)
            ctx->digest->freectx(ctx->provctx);
        ctx->provctx = NULL;
        FUNC1(ctx, EVP_MD_CTX_FLAG_CLEANED);
    }

    /* TODO(3.0): Remove legacy code below */

    /*
     * Don't assume ctx->md_data was cleaned in EVP_Digest_Final, because
     * sometimes only copies of the context are ever finalised.
     */
    if (ctx->digest && ctx->digest->cleanup
        && !FUNC2(ctx, EVP_MD_CTX_FLAG_CLEANED))
        ctx->digest->cleanup(ctx);
    if (ctx->digest && ctx->digest->ctx_size && ctx->md_data
        && !FUNC2(ctx, EVP_MD_CTX_FLAG_REUSE)) {
        FUNC6(ctx->md_data, ctx->digest->ctx_size);
    }

#if !defined(FIPS_MODE) && !defined(OPENSSL_NO_ENGINE)
    FUNC0(ctx->engine);
#endif

    /* TODO(3.0): End of legacy code */

    FUNC5(ctx, sizeof(*ctx));

    return 1;
}