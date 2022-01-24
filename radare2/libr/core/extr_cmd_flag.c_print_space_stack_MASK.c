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
typedef  int /*<<< orphan*/  RFlag ;
typedef  int /*<<< orphan*/  PJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,...) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(RFlag *f, int ordinal, const char *name, bool selected, PJ *pj, int mode) {
	bool first = ordinal == 0;
	switch (mode) {
	case 'j': {
		char *ename = FUNC7 (name);
		if (!ename) {
			return;
		}

		FUNC5 (pj);
		FUNC3 (pj, "ordinal", ordinal);
		FUNC4 (pj, "name", ename);
		FUNC2 (pj, "selected", selected);
		FUNC1 (pj);
		FUNC0 (ename);
		break;
	}
	case '*': {
		const char *fmt = first? "fs %s\n": "fs+%s\n";
		FUNC6 (fmt, name);
		break;
	}
	default:
		FUNC6 ("%-2d %s%s\n", ordinal, name, selected? " (selected)": "");
		break;
	}
}