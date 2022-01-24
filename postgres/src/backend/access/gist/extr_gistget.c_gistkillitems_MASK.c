#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ curBlkno; scalar_t__ curPageLSN; int numKilled; int /*<<< orphan*/ * killedItems; } ;
struct TYPE_4__ {int /*<<< orphan*/  indexRelation; int /*<<< orphan*/  opaque; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  TYPE_2__* GISTScanOpaque ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIST_SHARE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(IndexScanDesc scan)
{
	GISTScanOpaque so = (GISTScanOpaque) scan->opaque;
	Buffer		buffer;
	Page		page;
	OffsetNumber offnum;
	ItemId		iid;
	int			i;
	bool		killedsomething = false;

	FUNC0(so->curBlkno != InvalidBlockNumber);
	FUNC0(!FUNC12(so->curPageLSN));
	FUNC0(so->killedItems != NULL);

	buffer = FUNC10(scan->indexRelation, so->curBlkno);
	if (!FUNC3(buffer))
		return;

	FUNC7(buffer, GIST_SHARE);
	FUNC13(scan->indexRelation, buffer);
	page = FUNC2(buffer);

	/*
	 * If page LSN differs it means that the page was modified since the last
	 * read. killedItems could be not valid so LP_DEAD hints applying is not
	 * safe.
	 */
	if (FUNC1(buffer) != so->curPageLSN)
	{
		FUNC11(buffer);
		so->numKilled = 0;		/* reset counter */
		return;
	}

	FUNC0(FUNC5(page));

	/*
	 * Mark all killedItems as dead. We need no additional recheck, because,
	 * if page was modified, curPageLSN must have changed.
	 */
	for (i = 0; i < so->numKilled; i++)
	{
		offnum = so->killedItems[i];
		iid = FUNC9(page, offnum);
		FUNC6(iid);
		killedsomething = true;
	}

	if (killedsomething)
	{
		FUNC4(page);
		FUNC8(buffer, true);
	}

	FUNC11(buffer);

	/*
	 * Always reset the scan state, so we don't look for same items on other
	 * pages.
	 */
	so->numKilled = 0;
}