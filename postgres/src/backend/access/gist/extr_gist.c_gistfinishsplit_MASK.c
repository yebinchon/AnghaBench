#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_11__ {scalar_t__ buffer; int retry_from_parent; int /*<<< orphan*/  downlinkoffnum; TYPE_5__* parent; } ;
struct TYPE_10__ {int /*<<< orphan*/  r; } ;
struct TYPE_9__ {scalar_t__ buf; int /*<<< orphan*/  downlink; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  int /*<<< orphan*/  GISTSTATE ;
typedef  TYPE_1__ GISTPageSplitInfo ;
typedef  TYPE_2__ GISTInsertState ;
typedef  TYPE_3__ GISTInsertStack ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GIST_EXCLUSIVE ; 
 int /*<<< orphan*/  InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(GISTInsertState *state, GISTInsertStack *stack,
				GISTSTATE *giststate, List *splitinfo, bool unlockbuf)
{
	GISTPageSplitInfo *right;
	GISTPageSplitInfo *left;
	IndexTuple	tuples[2];

	/* A split always contains at least two halves */
	FUNC0(FUNC5(splitinfo) >= 2);

	/*
	 * We need to insert downlinks for each new page, and update the downlink
	 * for the original (leftmost) page in the split. Begin at the rightmost
	 * page, inserting one downlink at a time until there's only two pages
	 * left. Finally insert the downlink for the last new page and update the
	 * downlink for the original page as one operation.
	 */
	FUNC1(stack->parent->buffer, GIST_EXCLUSIVE);
	FUNC2(state->r, stack);

	/*
	 * insert downlinks for the siblings from right to left, until there are
	 * only two siblings left.
	 */
	for (int pos = FUNC5(splitinfo) - 1; pos > 1; pos--)
	{
		right = (GISTPageSplitInfo *) FUNC6(splitinfo, pos);
		left = (GISTPageSplitInfo *) FUNC6(splitinfo, pos - 1);

		if (FUNC3(state, stack->parent, giststate,
							 &right->downlink, 1,
							 InvalidOffsetNumber,
							 left->buf, right->buf, false, false))
		{
			/*
			 * If the parent page was split, need to relocate the original
			 * parent pointer.
			 */
			FUNC2(state->r, stack);
		}
		/* gistinserttuples() released the lock on right->buf. */
	}

	right = (GISTPageSplitInfo *) FUNC7(splitinfo);
	left = (GISTPageSplitInfo *) FUNC4(splitinfo);

	/*
	 * Finally insert downlink for the remaining right page and update the
	 * downlink for the original page to not contain the tuples that were
	 * moved to the new pages.
	 */
	tuples[0] = left->downlink;
	tuples[1] = right->downlink;
	FUNC3(state, stack->parent, giststate,
					 tuples, 2,
					 stack->downlinkoffnum,
					 left->buf, right->buf,
					 true,		/* Unlock parent */
					 unlockbuf	/* Unlock stack->buffer if caller wants that */
		);
	FUNC0(left->buf == stack->buffer);

	/*
	 * If we split the page because we had to adjust the downlink on an
	 * internal page, while descending the tree for inserting a new tuple,
	 * then this might no longer be the correct page for the new tuple. The
	 * downlink to this page might not cover the new tuple anymore, it might
	 * need to go to the newly-created right sibling instead. Tell the caller
	 * to walk back up the stack, to re-check at the parent which page to
	 * insert to.
	 *
	 * Normally, the LSN-NSN interlock during the tree descend would also
	 * detect that a concurrent split happened (by ourselves), and cause us to
	 * retry at the parent. But that mechanism doesn't work during index
	 * build, because we don't do WAL-logging, and don't update LSNs, during
	 * index build.
	 */
	stack->retry_from_parent = true;
}