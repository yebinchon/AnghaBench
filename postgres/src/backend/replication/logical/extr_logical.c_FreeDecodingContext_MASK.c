#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * shutdown_cb; } ;
struct TYPE_6__ {int /*<<< orphan*/  context; int /*<<< orphan*/  reader; int /*<<< orphan*/  snapshot_builder; int /*<<< orphan*/  reorder; TYPE_1__ callbacks; } ;
typedef  TYPE_2__ LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void
FUNC5(LogicalDecodingContext *ctx)
{
	if (ctx->callbacks.shutdown_cb != NULL)
		FUNC4(ctx);

	FUNC2(ctx->reorder);
	FUNC0(ctx->snapshot_builder);
	FUNC3(ctx->reader);
	FUNC1(ctx->context);
}