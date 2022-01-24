#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int (* check_revocation ) (TYPE_2__*) ;int (* verify ) (TYPE_2__*) ;int (* check_policy ) (TYPE_2__*) ;TYPE_1__* param; int /*<<< orphan*/  error_depth; int /*<<< orphan*/  chain; } ;
typedef  TYPE_2__ X509_STORE_CTX ;
struct TYPE_16__ {int flags; } ;

/* Variables and functions */
 int X509_V_FLAG_POLICY_CHECK ; 
 int X509_V_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(X509_STORE_CTX *ctx)
{
    int err;
    int ok;

    /*
     * Before either returning with an error, or continuing with CRL checks,
     * instantiate chain public key parameters.
     */
    if ((ok = FUNC4(ctx)) == 0 ||
        (ok = FUNC6(ctx)) == 0 ||
        (ok = FUNC5(ctx)) == 0 ||
        (ok = FUNC7(ctx)) == 0 || 1)
        FUNC1(NULL, ctx->chain);
    if (ok == 0 || (ok = ctx->check_revocation(ctx)) == 0)
        return ok;

    err = FUNC0(&ctx->error_depth, NULL, ctx->chain,
                                  ctx->param->flags);
    if (err != X509_V_OK) {
        if ((ok = FUNC13(ctx, NULL, ctx->error_depth, err)) == 0)
            return ok;
    }

    /* Verify chain signatures and expiration times */
    ok = (ctx->verify != NULL) ? ctx->verify(ctx) : FUNC9(ctx);
    if (!ok)
        return ok;

    if ((ok = FUNC8(ctx)) == 0)
        return ok;

#ifndef OPENSSL_NO_RFC3779
    /* RFC 3779 path validation, now that CRL check has been done */
    if ((ok = FUNC3(ctx)) == 0)
        return ok;
    if ((ok = FUNC2(ctx)) == 0)
        return ok;
#endif

    /* If we get this far evaluate policies */
    if (ctx->param->flags & X509_V_FLAG_POLICY_CHECK)
        ok = ctx->check_policy(ctx);
    return ok;
}