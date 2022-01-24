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
struct ctxUnsetForCB {TYPE_2__* anal; int /*<<< orphan*/ * space; } ;
struct TYPE_9__ {int /*<<< orphan*/ * sdb_zigns; } ;
struct TYPE_8__ {int /*<<< orphan*/ * space; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  TYPE_1__ RSignItem ;

/* Variables and functions */
 int R_SIGN_KEY_MAXSZ ; 
 int R_SIGN_VAL_MAXSZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*,char*,char*) ; 

__attribute__((used)) static int FUNC7(void *user, const char *k, const char *v) {
	struct ctxUnsetForCB *ctx = (struct ctxUnsetForCB *) user;
	char nk[R_SIGN_KEY_MAXSZ], nv[R_SIGN_VAL_MAXSZ];
	RSignItem *it = FUNC3 ();
	Sdb *db = ctx->anal->sdb_zigns;

	if (FUNC1 (ctx->anal, it, k, v)) {
		if (it->space && it->space == ctx->space) {
			it->space = NULL;
			FUNC6 (ctx->anal, it, nk, nv);
			FUNC4 (db, k, 0);
			FUNC5 (db, nk, nv, 0);
		}
	} else {
		FUNC0 ("error: cannot deserialize zign\n");
	}
	FUNC2 (it);

	return 1;
}