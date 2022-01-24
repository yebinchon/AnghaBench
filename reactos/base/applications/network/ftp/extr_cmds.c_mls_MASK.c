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
typedef  int /*<<< orphan*/  jmp_buf ;

/* Variables and functions */
 int code ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ fromatty ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const**) ; 
 int interactive ; 
 int /*<<< orphan*/ * line ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int margc ; 
 char** margv ; 
 int mflag ; 
 char const* mname ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(int argc, const char *argv[])
{
	const char *cmd, *dest;
	char mode[1];
	int ointer, i;
	extern jmp_buf jabort;

	if (argc < 2) {
		(void) FUNC8(line, " ");
		FUNC5("(remote-files) ");
		(void) FUNC1(stdout);
		(void) FUNC2(&line[FUNC10(line)]);
		FUNC4();
		argc = margc;
		argv = margv;
	}
	if (argc < 3) {
		(void) FUNC8(line, " ");
		FUNC5("(local-file) ");
		(void) FUNC1(stdout);
		(void) FUNC2(&line[FUNC10(line)]);
		FUNC4();
		argc = margc;
		argv = margv;
	}
	if (argc < 3) {
		FUNC5("usage:%s remote-files local-file\n", argv[0]);
		(void) FUNC1(stdout);
		code = -1;
		return;
	}
	dest = argv[argc - 1];
	argv[argc - 1] = NULL;
	if (FUNC9(dest, "-") && *dest != '|')
		if (!FUNC3(&dest) || !FUNC0("output to local-file:", dest)) {
			code = -1;
			return;
	}
	cmd = argv[0][1] == 'l' ? "NLST" : "LIST";
	mname = argv[0];
	mflag = 1;
//	oldintr = signal(SIGINT, mabort);
	(void) FUNC7(jabort);
	for (i = 1; mflag && i < argc-1; ++i) {
		*mode = (i == 1) ? 'w' : 'a';
		FUNC6(cmd, dest, argv[i], mode, 0);
		if (!mflag && fromatty) {
			ointer = interactive;
			interactive = 1;
			if (FUNC0("Continue with", argv[0])) {
				mflag ++;
			}
			interactive = ointer;
		}
	}
//	(void) signal(SIGINT, oldintr);
	mflag = 0;
}