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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ fromatty ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int interactive ; 
 int /*<<< orphan*/ * line ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int margc ; 
 char** margv ; 
 int mflag ; 
 char const* mname ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(int argc, const char *argv[])
{
	const char *cp;
	int ointer;
	extern jmp_buf jabort;

	if (argc < 2) {
		(void) FUNC8(line, " ");
		FUNC5("(remote-files) ");
		(void) FUNC2(stdout);
		(void) FUNC3(&line[FUNC9(line)]);
		FUNC4();
		argc = margc;
		argv = margv;
	}
	if (argc < 2) {
		FUNC5("usage:%s remote-files\n", argv[0]);
		(void) FUNC2(stdout);
		code = -1;
		return;
	}
	mname = argv[0];
	mflag = 1;
//	oldintr = signal(SIGINT, mabort);
	(void) FUNC7(jabort);
	while ((cp = FUNC6(argv,0)) != NULL) {
		if (*cp == '\0') {
			mflag = 0;
			continue;
		}
		if (mflag && FUNC1(argv[0], cp)) {
			(void) FUNC0("DELE %s", cp);
			if (!mflag && fromatty) {
				ointer = interactive;
				interactive = 1;
				if (FUNC1("Continue with", "mdelete")) {
					mflag++;
				}
				interactive = ointer;
			}
		}
	}
//	(void) signal(SIGINT, oldintr);
	mflag = 0;
}