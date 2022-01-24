#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  blockno; } ;
struct TYPE_9__ {char status; } ;
struct TYPE_8__ {scalar_t__ status; TYPE_7__ entry1; int /*<<< orphan*/ * pagetable; int /*<<< orphan*/  mcxt; } ;
typedef  TYPE_1__ TIDBitmap ;
typedef  TYPE_2__ PagetableEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TBM_HASH ; 
 scalar_t__ TBM_ONE_PAGE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC4(TIDBitmap *tbm)
{
	FUNC0(tbm->status != TBM_HASH);
	FUNC0(tbm->pagetable == NULL);

	tbm->pagetable = FUNC2(tbm->mcxt, 128, tbm);

	/* If entry1 is valid, push it into the hashtable */
	if (tbm->status == TBM_ONE_PAGE)
	{
		PagetableEntry *page;
		bool		found;
		char		oldstatus;

		page = FUNC3(tbm->pagetable,
								tbm->entry1.blockno,
								&found);
		FUNC0(!found);
		oldstatus = page->status;
		FUNC1(page, &tbm->entry1, sizeof(PagetableEntry));
		page->status = oldstatus;
	}

	tbm->status = TBM_HASH;
}