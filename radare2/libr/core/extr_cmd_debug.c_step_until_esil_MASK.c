#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* anal; } ;
struct TYPE_10__ {int break_loop; TYPE_2__* anal; TYPE_5__* dbg; } ;
struct TYPE_9__ {int /*<<< orphan*/  esil; } ;
struct TYPE_8__ {int /*<<< orphan*/  esil; } ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_TYPE_ALL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int) ; 

__attribute__((used)) static int FUNC8(RCore *core, const char *esilstr) {
	if (!core || !esilstr || !core->dbg || !core->dbg->anal \
			|| !core->dbg->anal->esil) {
		FUNC0 ("Not initialized %p. Run 'aei' first.\n", core->anal->esil);
		return false;
	}
	FUNC3 (NULL, NULL);
	for (;;) {
		if (FUNC4 ()) {
			core->break_loop = true;
			break;
		}
		if (FUNC5 (core->dbg)) {
			core->break_loop = true;
			break;
		}
		FUNC7 (core->dbg, 1);
		FUNC6 (core->dbg, R_REG_TYPE_ALL, false);
		if (FUNC1 (core->anal->esil, esilstr)) {
			FUNC0 ("ESIL BREAK!\n");
			break;
		}
	}
	FUNC2 ();
	return true;
}