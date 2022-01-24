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
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Item ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  GinBtree ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void
FUNC6(GinBtree btree, Page root,
				 BlockNumber lblkno, Page lpage,
				 BlockNumber rblkno, Page rpage)
{
	IndexTuple	itup;

	itup = FUNC0(FUNC4(lpage), lpage, lblkno);
	if (FUNC2(root, (Item) itup, FUNC1(itup), InvalidOffsetNumber, false, false) == InvalidOffsetNumber)
		FUNC3(ERROR, "failed to add item to index root page");
	FUNC5(itup);

	itup = FUNC0(FUNC4(rpage), rpage, rblkno);
	if (FUNC2(root, (Item) itup, FUNC1(itup), InvalidOffsetNumber, false, false) == InvalidOffsetNumber)
		FUNC3(ERROR, "failed to add item to index root page");
	FUNC5(itup);
}