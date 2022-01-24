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
struct ctxForeachCB {int /*<<< orphan*/  user; int /*<<< orphan*/  (* cb ) (TYPE_1__*,int /*<<< orphan*/ ) ;TYPE_2__* anal; } ;
struct TYPE_9__ {int /*<<< orphan*/  zign_spaces; } ;
struct TYPE_8__ {int /*<<< orphan*/ * space; } ;
typedef  int /*<<< orphan*/  RSpace ;
typedef  TYPE_1__ RSignItem ;
typedef  TYPE_2__ RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *user, const char *k, const char *v) {
	struct ctxForeachCB *ctx = (struct ctxForeachCB *) user;
	RSignItem *it = FUNC3 ();
	RAnal *a = ctx->anal;
	int retval = 1;

	if (FUNC1 (a, it, k, v)) {
		RSpace *cur = FUNC4 (&a->zign_spaces);
		if (ctx->cb && cur == it->space) {
			ctx->cb (it, ctx->user);
		}
	} else {
		FUNC0 ("error: cannot deserialize zign\n");
	}
	FUNC2 (it);
	return retval;
}