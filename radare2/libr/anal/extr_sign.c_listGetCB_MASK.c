#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ctxGetListCB {int /*<<< orphan*/  list; int /*<<< orphan*/  anal; } ;
typedef  int /*<<< orphan*/  RSignItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static int FUNC4(void *user, const char *key, const char *val) {
	struct ctxGetListCB *ctx = user;
	RSignItem *item = FUNC3 ();
	if (!item) {
		return false;
	}
	if (!FUNC1 (ctx->anal, item, key, val)) {
		FUNC2 (item);
		return false;
	}
	FUNC0 (ctx->list, item);

	return 1;
}