#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ downlinkoffnum; TYPE_1__* parent; } ;
struct TYPE_14__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_13__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/  page; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_2__* IndexTuple ;
typedef  int /*<<< orphan*/  GISTSTATE ;
typedef  TYPE_3__ GISTInsertStack ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  GIST_EXCLUSIVE ; 
 int /*<<< orphan*/  GIST_UNLOCK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static IndexTuple
FUNC12(Relation rel, Buffer buf, GISTSTATE *giststate,
				 GISTInsertStack *stack)
{
	Page		page = FUNC1(buf);
	OffsetNumber maxoff;
	OffsetNumber offset;
	IndexTuple	downlink = NULL;

	maxoff = FUNC9(page);
	for (offset = FirstOffsetNumber; offset <= maxoff; offset = FUNC6(offset))
	{
		IndexTuple	ituple = (IndexTuple)
		FUNC7(page, FUNC8(page, offset));

		if (downlink == NULL)
			downlink = FUNC2(ituple);
		else
		{
			IndexTuple	newdownlink;

			newdownlink = FUNC11(rel, downlink, ituple,
										  giststate);
			if (newdownlink)
				downlink = newdownlink;
		}
	}

	/*
	 * If the page is completely empty, we can't form a meaningful downlink
	 * for it. But we have to insert a downlink for the page. Any key will do,
	 * as long as its consistent with the downlink of parent page, so that we
	 * can legally insert it to the parent. A minimal one that matches as few
	 * scans as possible would be best, to keep scans from doing useless work,
	 * but we don't know how to construct that. So we just use the downlink of
	 * the original page that was split - that's as far from optimal as it can
	 * get but will do..
	 */
	if (!downlink)
	{
		ItemId		iid;

		FUNC5(stack->parent->buffer, GIST_EXCLUSIVE);
		FUNC10(rel, stack);
		iid = FUNC8(stack->parent->page, stack->downlinkoffnum);
		downlink = (IndexTuple) FUNC7(stack->parent->page, iid);
		downlink = FUNC2(downlink);
		FUNC5(stack->parent->buffer, GIST_UNLOCK);
	}

	FUNC4(&(downlink->t_tid), FUNC0(buf));
	FUNC3(downlink);

	return downlink;
}