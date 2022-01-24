#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut32 ;
struct r_magic {int dummy; } ;
struct mlist {int mapped; struct mlist* prev; struct mlist* next; int /*<<< orphan*/  nmagic; struct r_magic* magic; } ;
struct TYPE_8__ {char const* file; scalar_t__ haderr; } ;
typedef  TYPE_1__ RMagic ;

/* Variables and functions */
 int FILE_COMPILE ; 
 scalar_t__ FILE_MAGICSIZE ; 
 int FUNC0 (TYPE_1__*,struct r_magic**,int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (TYPE_1__*,struct r_magic**,int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC2 (TYPE_1__*,struct r_magic**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct r_magic*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct r_magic*) ; 
 scalar_t__ magicsize ; 
 struct mlist* FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(RMagic *ms, const char *fn, int action, struct mlist *mlist) {
	struct r_magic *magic = NULL;
	ut32 nmagic = 0;
	struct mlist *ml;
	int rv = -1;
	int mapped;

	if (!ms) {
		return -1;
	}
	ms->haderr = 0;
	if (magicsize != FILE_MAGICSIZE) {
		FUNC4(ms, 0, "magic element size %lu != %lu",
		    (unsigned long)(size_t)sizeof (*magic),
		    (unsigned long)FILE_MAGICSIZE);
		return -1;
	}

	ms->file = fn; // fix use of ms->file before being initialized
	if (action == FILE_COMPILE) {
		rv = FUNC1 (ms, &magic, &nmagic, fn, action);
		if (rv != 0) {
			return -1;
		}
		rv = FUNC0 (ms, &magic, &nmagic, fn);
		FUNC6 (magic);
		return rv;
	}

	if ((rv = FUNC2 (ms, &magic, &nmagic, fn)) == -1) {
		//if (ms->flags & R_MAGIC_CHECK)
		//	file_magwarn(ms, "using regular magic file `%s'", fn);
		rv = FUNC1 (ms, &magic, &nmagic, fn, action);
		if (rv != 0) {
			return -1;
		}
	}

	mapped = rv;

	if (!magic) {
		FUNC3 (magic, mapped, nmagic);
		return -1;
	}

	if (!(ml = FUNC7 (sizeof (*ml)))) {
		FUNC3 (magic, mapped, nmagic);
		FUNC5 (ms, sizeof (*ml));
		return -1;
	}

	ml->magic = magic;
	ml->nmagic = nmagic;
	ml->mapped = mapped;

	mlist->prev->next = ml;
	ml->prev = mlist->prev;
	ml->next = mlist;
	mlist->prev = ml;
	return 0;
}