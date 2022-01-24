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
 int MAXPATHLEN ; 
 int code ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ fromatty ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int interactive ; 
 int /*<<< orphan*/  FUNC5 (char const) ; 
 scalar_t__ FUNC6 (char) ; 
 int /*<<< orphan*/ * line ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ mapflag ; 
 int margc ; 
 char** margv ; 
 scalar_t__ mcase ; 
 int mflag ; 
 char const* mname ; 
 scalar_t__ ntflag ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  proxy ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,char const*,char*,int) ; 
 char* FUNC10 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(int argc, const char *argv[])
{
	const char *cp, *tp;
    char *tp2, tmpbuf[MAXPATHLEN];
	int ointer;
	extern jmp_buf jabort;

	if (argc < 2) {
		(void) FUNC12(line, " ");
		FUNC8("(remote-files) ");
		(void) FUNC3(stdout);
		(void) FUNC4(&line[FUNC13(line)]);
		FUNC7();
		argc = margc;
		argv = margv;
	}
	if (argc < 2) {
		FUNC8("usage:%s remote-files\n", argv[0]);
		(void) FUNC3(stdout);
		code = -1;
		return;
	}
	mname = argv[0];
	mflag = 1;
//	oldintr = signal(SIGINT,mabort);
	(void) FUNC11(jabort);
	while ((cp = FUNC10(argv,proxy)) != NULL) {
		if (*cp == '\0') {
			mflag = 0;
			continue;
		}
		if (mflag && FUNC0(argv[0], cp)) {
			tp = cp;
			if (mcase) {
				while (*tp && !FUNC5(*tp)) {
					tp++;
				}
				if (!*tp) {
					tp = cp;
					tp2 = tmpbuf;
					while ((*tp2 = *tp)) {
						if (FUNC6(*tp2)) {
							*tp2 = 'a' + *tp2 - 'A';
						}
						tp++;
						tp2++;
					}
				}
				tp = tmpbuf;
			}
			if (ntflag) {
				tp = FUNC2(tp);
			}
			if (mapflag) {
				tp = FUNC1(tp);
			}
			FUNC9("RETR", tp, cp, "w",
			    tp != cp || !interactive);
			if (!mflag && fromatty) {
				ointer = interactive;
				interactive = 1;
				if (FUNC0("Continue with","mget")) {
					mflag++;
				}
				interactive = ointer;
			}
		}
	}
//	(void) signal(SIGINT,oldintr);
	mflag = 0;
}