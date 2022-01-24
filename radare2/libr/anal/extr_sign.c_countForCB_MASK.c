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
struct ctxCountForCB {scalar_t__ space; int /*<<< orphan*/  count; int /*<<< orphan*/  anal; } ;
struct TYPE_5__ {scalar_t__ space; } ;
typedef  TYPE_1__ RSignItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 

__attribute__((used)) static int FUNC4(void *user, const char *k, const char *v) {
	struct ctxCountForCB *ctx = (struct ctxCountForCB *) user;
	RSignItem *it = FUNC3 ();

	if (FUNC1 (ctx->anal, it, k, v)) {
		if (it->space == ctx->space) {
			ctx->count++;
		}
	} else {
		FUNC0 ("error: cannot deserialize zign\n");
	}
	FUNC2 (it);

	return 1;
}