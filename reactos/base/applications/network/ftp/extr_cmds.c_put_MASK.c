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
 int code ; 
 char* FUNC0 (char const*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**) ; 
 int /*<<< orphan*/ * line ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ mapflag ; 
 int margc ; 
 char** margv ; 
 scalar_t__ ntflag ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,char const*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ sunique ; 

void FUNC10(int argc, const char *argv[])
{
	const char *cmd;
	int loc = 0;
	const char *oldargv1, *oldargv2;

	if (argc == 2) {
		argc++;
		argv[2] = argv[1];
		loc++;
	}
	if (argc < 2) {
		(void) FUNC8(line, " ");
		FUNC6("(local-file) ");
		(void) FUNC2(stdout);
		(void) FUNC3(&line[FUNC9(line)]);
		FUNC5();
		argc = margc;
		argv = margv;
	}
	if (argc < 2) {
usage:
		FUNC6("usage:%s local-file remote-file\n", argv[0]);
		(void) FUNC2(stdout);
		code = -1;
		return;
	}
	if (argc < 3) {
		(void) FUNC8(line, " ");
		FUNC6("(remote-file) ");
		(void) FUNC2(stdout);
		(void) FUNC3(&line[FUNC9(line)]);
		FUNC5();
		argc = margc;
		argv = margv;
	}
	if (argc < 3)
		goto usage;
	oldargv1 = argv[1];
	oldargv2 = argv[2];
	if (!FUNC4(&argv[1])) {
		code = -1;
		return;
	}
	/*
	 * If "globulize" modifies argv[1], and argv[2] is a copy of
	 * the old argv[1], make it a copy of the new argv[1].
	 */
	if (argv[1] != oldargv1 && argv[2] == oldargv1) {
		argv[2] = argv[1];
	}
	cmd = (argv[0][0] == 'a') ? "APPE" : ((sunique) ? "STOU" : "STOR");
	if (loc && ntflag) {
		argv[2] = FUNC1(argv[2]);
	}
	if (loc && mapflag) {
		argv[2] = FUNC0(argv[2]);
	}
	FUNC7(cmd, argv[1], argv[2],
	    argv[1] != oldargv1 || argv[2] != oldargv2);
}