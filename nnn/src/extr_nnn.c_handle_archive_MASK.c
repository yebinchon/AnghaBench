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

/* Variables and functions */
 size_t ATOOL ; 
 size_t BSDTAR ; 
 int /*<<< orphan*/  F_NORMAL ; 
 size_t TAR ; 
 int /*<<< orphan*/  TRUE ; 
 size_t UNZIP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char const*,int /*<<< orphan*/ ) ; 
 char** utils ; 

__attribute__((used)) static void FUNC6(char *fpath, const char *dir, char op)
{
	char arg[] = "-tvf"; /* options for tar/bsdtar to list files */
	char *util;

	if (FUNC2(utils[ATOOL])) {
		util = utils[ATOOL];
		arg[1] = op;
		arg[2] = '\0';
	} else if (FUNC2(utils[BSDTAR])) {
		util = utils[BSDTAR];
		if (op == 'x')
			arg[1] = op;
	} else if (FUNC3(fpath, ".zip")) {
		util = utils[UNZIP];
		arg[1] = (op == 'l') ? 'v' /* verbose listing */ : '\0';
		arg[2] = '\0';
	} else {
		util = utils[TAR];
		if (op == 'x')
			arg[1] = op;
	}

	if (op == 'x') { /* extract */
		FUNC5(util, arg, fpath, dir, F_NORMAL);
	} else { /* list */
		FUNC0();
		FUNC1(NULL, 0, util, arg, fpath, TRUE);
		FUNC4();
	}
}