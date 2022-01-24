#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  anal; } ;
typedef  int /*<<< orphan*/  RListFree ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ free ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int) ; 

__attribute__((used)) static bool FUNC7(RCore *core, const char *name, const char *args0, int nargs) {
	int i = 0;
	if (nargs < 1) {
		FUNC0 ("error: invalid syntax\n");
		return false;
	}

	RList *vars = FUNC3 ((RListFree) free);
	for (i = 0; i < nargs; i++) {
		FUNC1 (vars, FUNC5 (FUNC6 (args0, i)));
	}

	bool retval = FUNC4 (core->anal, name, vars);
	FUNC2 (vars);
	return retval;
}