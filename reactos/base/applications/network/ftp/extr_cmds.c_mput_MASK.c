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
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int code ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  doglob ; 
 char const* FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ fromatty ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char** FUNC7 (char const*) ; 
 char* globerr ; 
 int interactive ; 
 int /*<<< orphan*/  FUNC8 (char const) ; 
 scalar_t__ FUNC9 (char) ; 
 int /*<<< orphan*/ * line ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ mapflag ; 
 int margc ; 
 char** margv ; 
 scalar_t__ mcase ; 
 int mflag ; 
 char const* mname ; 
 scalar_t__ ntflag ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ proxy ; 
 char* FUNC12 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ sunique ; 

void FUNC17(int argc, const char *argv[])
{
	register int i;
	int ointer;
	extern jmp_buf jabort;
	const char *tp;

	if (argc < 2) {
		(void) FUNC15(line, " ");
		FUNC11("(local-files) ");
		(void) FUNC4(stdout);
		(void) FUNC6(&line[FUNC16(line)]);
		FUNC10();
		argc = margc;
		argv = margv;
	}
	if (argc < 2) {
		FUNC11("usage:%s local-files\n", argv[0]);
		(void) FUNC4(stdout);
		code = -1;
		return;
	}
	mname = argv[0];
	mflag = 1;
//	oldintr = signal(SIGINT, mabort);
	(void) FUNC14(jabort);
	if (proxy) {
		const char *cp;
		char *tp2, tmpbuf[MAXPATHLEN];

		while ((cp = FUNC12(argv,0)) != NULL) {
			if (*cp == 0) {
				mflag = 0;
				continue;
			}
			if (mflag && FUNC1(argv[0], cp)) {
				tp = cp;
				if (mcase) {
					while (*tp && !FUNC8(*tp)) {
						tp++;
					}
					if (!*tp) {
						tp = cp;
						tp2 = tmpbuf;
						while ((*tp2 = *tp)) {
						     if (FUNC9(*tp2)) {
						        *tp2 = 'a' + *tp2 - 'A';
						     }
						     tp++;
						     tp2++;
						}
					}
					tp = tmpbuf;
				}
				if (ntflag) {
					tp = FUNC3(tp);
				}
				if (mapflag) {
					tp = FUNC2(tp);
				}
				FUNC13((sunique) ? "STOU" : "STOR",
				    cp, tp, cp != tp || !interactive);
				if (!mflag && fromatty) {
					ointer = interactive;
					interactive = 1;
					if (FUNC1("Continue with","mput")) {
						mflag++;
					}
					interactive = ointer;
				}
			}
		}
//		(void) signal(SIGINT, oldintr);
		mflag = 0;
		return;
	}
	for (i = 1; i < argc; i++) {
		register char **cpp, **gargs;

		if (!doglob) {
			if (mflag && FUNC1(argv[0], argv[i])) {
				tp = (ntflag) ? FUNC3(argv[i]) : argv[i];
				tp = (mapflag) ? FUNC2(tp) : tp;
				FUNC13((sunique) ? "STOU" : "STOR",
				    argv[i], tp, tp != argv[i] || !interactive);
				if (!mflag && fromatty) {
					ointer = interactive;
					interactive = 1;
					if (FUNC1("Continue with","mput")) {
						mflag++;
					}
					interactive = ointer;
				}
			}
			continue;
		}
		gargs = FUNC7(argv[i]);
		if (globerr != NULL) {
			FUNC11("%s\n", globerr);
			(void) FUNC4(stdout);
			if (gargs) {
				FUNC0(gargs);
				FUNC5((char *)gargs);
			}
			continue;
		}
		for (cpp = gargs; cpp && *cpp != NULL; cpp++) {
			if (mflag && FUNC1(argv[0], *cpp)) {
				tp = (ntflag) ? FUNC3(*cpp) : *cpp;
				tp = (mapflag) ? FUNC2(tp) : tp;
				FUNC13((sunique) ? "STOU" : "STOR",
				    *cpp, tp, *cpp != tp || !interactive);
				if (!mflag && fromatty) {
					ointer = interactive;
					interactive = 1;
					if (FUNC1("Continue with","mput")) {
						mflag++;
					}
					interactive = ointer;
				}
			}
		}
		if (gargs != NULL) {
			FUNC0(gargs);
			FUNC5((char *)gargs);
		}
	}
//	(void) signal(SIGINT, oldintr);
	mflag = 0;
}