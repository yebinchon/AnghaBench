#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * sigprovctx; } ;
struct TYPE_15__ {int /*<<< orphan*/ * exchprovctx; } ;
struct TYPE_13__ {TYPE_1__ sig; TYPE_4__ kex; } ;
struct TYPE_16__ {TYPE_3__* pmeth; TYPE_2__ op; } ;
struct TYPE_14__ {int (* ctrl_str ) (TYPE_5__*,char const*,char const*) ;} ;
typedef  TYPE_5__ EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_F_EVP_PKEY_CTX_CTRL_STR ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_MD ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  EVP_PKEY_OP_TYPE_SIG ; 
 int /*<<< orphan*/  EVP_R_COMMAND_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_5__*,char const*,char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int FUNC6 (TYPE_5__*,char const*,char const*) ; 

int FUNC7(EVP_PKEY_CTX *ctx,
                          const char *name, const char *value)
{
    if (ctx == NULL) {
        FUNC3(EVP_F_EVP_PKEY_CTX_CTRL_STR, EVP_R_COMMAND_NOT_SUPPORTED);
        return -2;
    }

    if ((FUNC0(ctx) && ctx->op.kex.exchprovctx != NULL)
            || (FUNC1(ctx)
                && ctx->op.sig.sigprovctx != NULL))
        return FUNC4(ctx, name, value);

    if (!ctx || !ctx->pmeth || !ctx->pmeth->ctrl_str) {
        FUNC3(EVP_F_EVP_PKEY_CTX_CTRL_STR, EVP_R_COMMAND_NOT_SUPPORTED);
        return -2;
    }
    if (FUNC5(name, "digest") == 0)
        return FUNC2(ctx, EVP_PKEY_OP_TYPE_SIG, EVP_PKEY_CTRL_MD,
                               value);
    return ctx->pmeth->ctrl_str(ctx, name, value);
}