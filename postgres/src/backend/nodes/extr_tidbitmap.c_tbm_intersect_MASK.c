#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pagetable_iterator ;
struct TYPE_10__ {int /*<<< orphan*/  blockno; scalar_t__ ischunk; } ;
struct TYPE_9__ {scalar_t__ nentries; scalar_t__ status; int /*<<< orphan*/  pagetable; int /*<<< orphan*/  npages; int /*<<< orphan*/  nchunks; TYPE_2__ entry1; int /*<<< orphan*/  iterating; } ;
typedef  TYPE_1__ TIDBitmap ;
typedef  TYPE_2__ PagetableEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ TBM_EMPTY ; 
 scalar_t__ TBM_HASH ; 
 scalar_t__ TBM_ONE_PAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_2__*,TYPE_1__ const*) ; 

void
FUNC6(TIDBitmap *a, const TIDBitmap *b)
{
	FUNC0(!a->iterating);
	/* Nothing to do if a is empty */
	if (a->nentries == 0)
		return;
	/* Scan through chunks and pages in a, try to match to b */
	if (a->status == TBM_ONE_PAGE)
	{
		if (FUNC5(a, &a->entry1, b))
		{
			/* Page is now empty, remove it from a */
			FUNC0(!a->entry1.ischunk);
			a->npages--;
			a->nentries--;
			FUNC0(a->nentries == 0);
			a->status = TBM_EMPTY;
		}
	}
	else
	{
		pagetable_iterator i;
		PagetableEntry *apage;

		FUNC0(a->status == TBM_HASH);
		FUNC4(a->pagetable, &i);
		while ((apage = FUNC3(a->pagetable, &i)) != NULL)
		{
			if (FUNC5(a, apage, b))
			{
				/* Page or chunk is now empty, remove it from a */
				if (apage->ischunk)
					a->nchunks--;
				else
					a->npages--;
				a->nentries--;
				if (!FUNC2(a->pagetable, apage->blockno))
					FUNC1(ERROR, "hash table corrupted");
			}
		}
	}
}