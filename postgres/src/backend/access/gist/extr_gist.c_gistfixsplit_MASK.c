#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/  downlinkoffnum; int /*<<< orphan*/  page; int /*<<< orphan*/  blkno; } ;
struct TYPE_13__ {int /*<<< orphan*/  r; TYPE_3__* stack; } ;
struct TYPE_12__ {int /*<<< orphan*/  downlink; int /*<<< orphan*/  buf; } ;
struct TYPE_11__ {int /*<<< orphan*/  rightlink; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  int /*<<< orphan*/  GISTSTATE ;
typedef  TYPE_1__ GISTPageSplitInfo ;
typedef  TYPE_2__ GISTInsertState ;
typedef  TYPE_3__ GISTInsertStack ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIST_EXCLUSIVE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13(GISTInsertState *state, GISTSTATE *giststate)
{
	GISTInsertStack *stack = state->stack;
	Buffer		buf;
	Page		page;
	List	   *splitinfo = NIL;

	FUNC8(LOG, "fixing incomplete split in index \"%s\", block %u",
		 FUNC7(state->r), stack->blkno);

	FUNC0(FUNC2(stack->page));
	FUNC0(FUNC5(stack->downlinkoffnum));

	buf = stack->buffer;

	/*
	 * Read the chain of split pages, following the rightlinks. Construct a
	 * downlink tuple for each page.
	 */
	for (;;)
	{
		GISTPageSplitInfo *si = FUNC12(sizeof(GISTPageSplitInfo));
		IndexTuple	downlink;

		page = FUNC1(buf);

		/* Form the new downlink tuples to insert to parent */
		downlink = FUNC10(state->r, buf, giststate, stack);

		si->buf = buf;
		si->downlink = downlink;

		splitinfo = FUNC11(splitinfo, si);

		if (FUNC2(page))
		{
			/* lock next page */
			buf = FUNC6(state->r, FUNC3(page)->rightlink);
			FUNC4(buf, GIST_EXCLUSIVE);
		}
		else
			break;
	}

	/* Insert the downlinks */
	FUNC9(state, stack, giststate, splitinfo, false);
}