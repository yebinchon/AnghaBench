#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  rightlink; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

Buffer
FUNC9(Buffer buffer, Relation index, int lockmode)
{
	Buffer		nextbuffer;
	Page		page = FUNC0(buffer);
	bool		isLeaf = FUNC4(page);
	bool		isData = FUNC2(page);
	BlockNumber blkno = FUNC1(page)->rightlink;

	nextbuffer = FUNC6(index, blkno);
	FUNC5(nextbuffer, lockmode);
	FUNC7(buffer);

	/* Sanity check that the page we stepped to is of similar kind. */
	page = FUNC0(nextbuffer);
	if (isLeaf != FUNC4(page) || isData != FUNC2(page))
		FUNC8(ERROR, "right sibling of GIN page is of different type");

	/*
	 * Given the proper lock sequence above, we should never land on a deleted
	 * page.
	 */
	if (FUNC3(page))
		FUNC8(ERROR, "right sibling of GIN page was deleted");

	return nextbuffer;
}