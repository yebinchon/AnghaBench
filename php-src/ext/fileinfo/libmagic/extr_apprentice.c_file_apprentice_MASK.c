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
struct magic_set {int /*<<< orphan*/ ** mlist; } ;

/* Variables and functions */
#define  FILE_CHECK 131 
#define  FILE_COMPILE 130 
#define  FILE_LIST 129 
#define  FILE_LOAD 128 
 size_t MAGIC_SETS ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  PATHSEP ; 
 int FUNC1 (struct magic_set*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct magic_set*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct magic_set*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct magic_set*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 char* FUNC9 (char const*,int) ; 
 void* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC13 (char const*) ; 

int
FUNC14(struct magic_set *ms, const char *fn, int action)
{
	char *p, *mfn;
	int fileerr, errs = -1;
	size_t i;

	(void)FUNC6(ms, 0);

/* XXX disabling default magic loading so the compiled in data is used */
#if 0
	if ((fn = magic_getpath(fn, action)) == NULL)
		return -1;
#endif

	FUNC8();

	if (fn == NULL)
		fn = FUNC7("MAGIC");
	if (fn == NULL) {
		for (i = 0; i < MAGIC_SETS; i++) {
			FUNC11(ms->mlist[i]);
			if ((ms->mlist[i] = FUNC10()) == NULL) {
				FUNC5(ms, sizeof(*ms->mlist[i]));
				return -1;
			}
		}
		return FUNC1(ms, fn, action);
	}

	if ((mfn = FUNC3(fn)) == NULL) {
		FUNC5(ms, FUNC13(fn));
		return -1;
	}

	for (i = 0; i < MAGIC_SETS; i++) {
		FUNC11(ms->mlist[i]);
		if ((ms->mlist[i] = FUNC10()) == NULL) {
			FUNC5(ms, sizeof(*ms->mlist[i]));
			while (i-- > 0) {
				FUNC11(ms->mlist[i]);
				ms->mlist[i] = NULL;
			}
			FUNC2(mfn);
			return -1;
		}
	}
	fn = mfn;

	while (fn) {
		p = FUNC12(fn, PATHSEP);
		if (p)
			*p++ = '\0';
		if (*fn == '\0')
			break;
		fileerr = FUNC1(ms, fn, action);
		errs = FUNC0(errs, fileerr);
		fn = p;
	}

	FUNC2(mfn);

	if (errs == -1) {
		for (i = 0; i < MAGIC_SETS; i++) {
			FUNC11(ms->mlist[i]);
			ms->mlist[i] = NULL;
		}
		FUNC4(ms, 0, "could not find any valid magic files!");
		return -1;
	}

#if 0
	/*
	 * Always leave the database loaded
	 */
	if (action == FILE_LOAD)
		return 0;

	for (i = 0; i < MAGIC_SETS; i++) {
		mlist_free(ms->mlist[i]);
		ms->mlist[i] = NULL;
	}
#endif

	switch (action) {
	case FILE_LOAD:
	case FILE_COMPILE:
	case FILE_CHECK:
	case FILE_LIST:
		return 0;
	default:
		FUNC4(ms, 0, "Invalid action %d", action);
		return -1;
	}
}