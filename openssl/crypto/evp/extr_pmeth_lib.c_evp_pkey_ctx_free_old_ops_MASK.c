#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  (* freectx ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  (* freectx ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_11__ {TYPE_6__* signature; int /*<<< orphan*/ * sigprovctx; } ;
struct TYPE_10__ {TYPE_9__* exchange; int /*<<< orphan*/ * exchprovctx; } ;
struct TYPE_12__ {TYPE_2__ sig; TYPE_1__ kex; } ;
struct TYPE_13__ {TYPE_3__ op; } ;
typedef  TYPE_4__ EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_9__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(EVP_PKEY_CTX *ctx)
{
    if (FUNC1(ctx)) {
        if (ctx->op.kex.exchprovctx != NULL && ctx->op.kex.exchange != NULL)
            ctx->op.kex.exchange->freectx(ctx->op.kex.exchprovctx);
        FUNC0(ctx->op.kex.exchange);
        ctx->op.kex.exchprovctx = NULL;
        ctx->op.kex.exchange = NULL;
    } else if (FUNC2(ctx)) {
        if (ctx->op.sig.sigprovctx != NULL && ctx->op.sig.signature != NULL)
            ctx->op.sig.signature->freectx(ctx->op.sig.sigprovctx);
        FUNC3(ctx->op.sig.signature);
        ctx->op.sig.sigprovctx = NULL;
        ctx->op.sig.signature = NULL;
    }
}