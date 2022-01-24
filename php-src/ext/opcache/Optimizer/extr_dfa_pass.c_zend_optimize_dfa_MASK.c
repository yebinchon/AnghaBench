#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_ssa ;
struct TYPE_5__ {int /*<<< orphan*/  arena; } ;
typedef  TYPE_1__ zend_optimizer_ctx ;
typedef  int /*<<< orphan*/  zend_op_array ;

/* Variables and functions */
 scalar_t__ SUCCESS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(zend_op_array *op_array, zend_optimizer_ctx *ctx)
{
	void *checkpoint = FUNC0(ctx->arena);
	zend_ssa ssa;

	if (FUNC2(op_array, ctx, &ssa) != SUCCESS) {
		FUNC1(&ctx->arena, checkpoint);
		return;
	}

	FUNC3(op_array, ctx, &ssa, NULL);

	/* Destroy SSA */
	FUNC1(&ctx->arena, checkpoint);
}