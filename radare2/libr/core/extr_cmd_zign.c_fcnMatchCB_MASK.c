#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ctxSearchCB {int /*<<< orphan*/  count; int /*<<< orphan*/  rad; int /*<<< orphan*/  prefix; int /*<<< orphan*/  core; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  RSignItem ;
typedef  TYPE_1__ RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(RSignItem *it, RAnalFunction *fcn, void *user) {
	struct ctxSearchCB *ctx = (struct ctxSearchCB *) user;
	// TODO(nibble): use one counter per metric zign instead of ctx->count
	FUNC0 (ctx->core, it, fcn->addr, FUNC1 (fcn), ctx->count, ctx->prefix, ctx->rad);
	ctx->count++;
	return 1;
}