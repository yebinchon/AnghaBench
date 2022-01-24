#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* jscaller; struct TYPE_7__* stack; int /*<<< orphan*/  stack_top; scalar_t__ last_match; int /*<<< orphan*/  tmp_heap; scalar_t__ cc; int /*<<< orphan*/  acc; scalar_t__ ref; } ;
typedef  TYPE_2__ script_ctx_t ;
struct TYPE_6__ {int /*<<< orphan*/  IServiceProvider_iface; int /*<<< orphan*/ * ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

void FUNC8(script_ctx_t *ctx)
{
    if(--ctx->ref)
        return;

    FUNC6(ctx->acc);
    FUNC2(ctx);
    if(ctx->cc)
        FUNC7(ctx->cc);
    FUNC4(&ctx->tmp_heap);
    if(ctx->last_match)
        FUNC5(ctx->last_match);
    FUNC1(!ctx->stack_top);
    FUNC3(ctx->stack);

    ctx->jscaller->ctx = NULL;
    FUNC0(&ctx->jscaller->IServiceProvider_iface);

    FUNC3(ctx);
}