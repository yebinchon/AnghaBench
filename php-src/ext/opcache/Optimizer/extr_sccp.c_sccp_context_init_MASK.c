#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_11__ {int vars_count; TYPE_1__* vars; } ;
typedef  TYPE_2__ zend_ssa ;
struct TYPE_12__ {int /*<<< orphan*/  arena; } ;
typedef  TYPE_3__ zend_optimizer_ctx ;
struct TYPE_13__ {int last_var; } ;
typedef  TYPE_4__ zend_op_array ;
typedef  int /*<<< orphan*/  zend_call_info ;
struct TYPE_14__ {int /*<<< orphan*/ * values; int /*<<< orphan*/  bot; int /*<<< orphan*/  top; int /*<<< orphan*/ ** call_map; } ;
typedef  TYPE_5__ sccp_ctx ;
struct TYPE_10__ {scalar_t__ alias; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(zend_optimizer_ctx *ctx, sccp_ctx *sccp,
		zend_ssa *ssa, zend_op_array *op_array, zend_call_info **call_map) {
	int i;
	sccp->call_map = call_map;
	sccp->values = FUNC2(&ctx->arena, sizeof(zval) * ssa->vars_count);

	FUNC1(&sccp->top);
	FUNC0(&sccp->bot);

	i = 0;
	for (; i < op_array->last_var; ++i) {
		/* These are all undefined variables, which we have to mark BOT.
		 * Otherwise the undefined variable warning might not be preserved. */
		FUNC0(&sccp->values[i]);
	}
	for (; i < ssa->vars_count; ++i) {
		if (ssa->vars[i].alias) {
			FUNC0(&sccp->values[i]);
		} else {
			FUNC1(&sccp->values[i]);
		}
	}
}