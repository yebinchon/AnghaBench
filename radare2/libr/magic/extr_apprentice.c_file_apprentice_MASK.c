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
struct mlist {struct mlist* prev; struct mlist* next; } ;
typedef  int /*<<< orphan*/  RMagic ;

/* Variables and functions */
 char* MAGICFILE ; 
 int /*<<< orphan*/  PATHSEP ; 
 int /*<<< orphan*/  FUNC0 (struct mlist*) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int,struct mlist*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct mlist* FUNC8 (int) ; 
 char* FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char const*) ; 
 int FUNC11 (char const*) ; 

struct mlist * FUNC12(RMagic *ms, const char *fn, int action) {
	char *p, *mfn;
	int file_err, errs = -1;
	struct mlist *mlist;

	FUNC7 ();

	if (!fn) {
		fn = FUNC6 ("MAGIC");
	}
	if (!fn) {
		fn = MAGICFILE;
	}

	if (!(mfn = FUNC10 (fn))) {
		FUNC4 (ms, FUNC11 (fn));
		return NULL;
	}
	fn = mfn;

	if (!(mlist = FUNC8 (sizeof (*mlist)))) {
		FUNC5 (mfn);
		FUNC4 (ms, sizeof (*mlist));
		return NULL;
	}
	mlist->next = mlist->prev = mlist;

	while (fn) {
		p = FUNC9 (fn, PATHSEP);
		if (p) {
			*p++ = '\0';
		}
		if (*fn == '\0') {
			break;
		}
		file_err = FUNC2 (ms, fn, action, mlist);
		errs = FUNC1 (errs, file_err);
		fn = p;
	}
	if (errs == -1) {
		FUNC5 (mfn);
		FUNC0 (mlist);
		FUNC3 (ms, 0, "could not find any magic files!");
		return NULL;
	}
	FUNC5 (mfn);
	return mlist;
}