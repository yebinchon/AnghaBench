#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pagetable_iterator ;
struct TYPE_5__ {scalar_t__ nentries; scalar_t__ status; int /*<<< orphan*/  pagetable; int /*<<< orphan*/  entry1; int /*<<< orphan*/  iterating; } ;
typedef  TYPE_1__ TIDBitmap ;
typedef  int /*<<< orphan*/  PagetableEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TBM_HASH ; 
 scalar_t__ TBM_ONE_PAGE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void
FUNC4(TIDBitmap *a, const TIDBitmap *b)
{
	FUNC0(!a->iterating);
	/* Nothing to do if b is empty */
	if (b->nentries == 0)
		return;
	/* Scan through chunks and pages in b, merge into a */
	if (b->status == TBM_ONE_PAGE)
		FUNC3(a, &b->entry1);
	else
	{
		pagetable_iterator i;
		PagetableEntry *bpage;

		FUNC0(b->status == TBM_HASH);
		FUNC2(b->pagetable, &i);
		while ((bpage = FUNC1(b->pagetable, &i)) != NULL)
			FUNC3(a, bpage);
	}
}