#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  indexrel; } ;
struct TYPE_5__ {int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_1__* IndexTuple ;
typedef  TYPE_2__ GISTBuildState ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  GIST_EXCLUSIVE ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Buffer
FUNC11(GISTBuildState *buildstate,
							   BlockNumber childblkno, int level,
							   BlockNumber *parentblkno,
							   OffsetNumber *downlinkoffnum)
{
	BlockNumber parent;
	Buffer		buffer;
	Page		page;
	OffsetNumber maxoff;
	OffsetNumber off;

	if (level > 0)
		parent = FUNC9(buildstate, childblkno);
	else
	{
		/*
		 * For a leaf page, the caller must supply a correct parent block
		 * number.
		 */
		if (*parentblkno == InvalidBlockNumber)
			FUNC8(ERROR, "no parent buffer provided of child %d", childblkno);
		parent = *parentblkno;
	}

	buffer = FUNC7(buildstate->indexrel, parent);
	page = FUNC0(buffer);
	FUNC2(buffer, GIST_EXCLUSIVE);
	FUNC10(buildstate->indexrel, buffer);
	maxoff = FUNC6(page);

	/* Check if it was not moved */
	if (parent == *parentblkno && *parentblkno != InvalidBlockNumber &&
		*downlinkoffnum != InvalidOffsetNumber && *downlinkoffnum <= maxoff)
	{
		ItemId		iid = FUNC5(page, *downlinkoffnum);
		IndexTuple	idxtuple = (IndexTuple) FUNC4(page, iid);

		if (FUNC1(&(idxtuple->t_tid)) == childblkno)
		{
			/* Still there */
			return buffer;
		}
	}

	/*
	 * Downlink was not at the offset where it used to be. Scan the page to
	 * find it. During normal gist insertions, it might've moved to another
	 * page, to the right, but during a buffering build, we keep track of the
	 * parent of each page in the lookup table so we should always know what
	 * page it's on.
	 */
	for (off = FirstOffsetNumber; off <= maxoff; off = FUNC3(off))
	{
		ItemId		iid = FUNC5(page, off);
		IndexTuple	idxtuple = (IndexTuple) FUNC4(page, iid);

		if (FUNC1(&(idxtuple->t_tid)) == childblkno)
		{
			/* yes!!, found it */
			*downlinkoffnum = off;
			return buffer;
		}
	}

	FUNC8(ERROR, "failed to re-find parent for block %u", childblkno);
	return InvalidBuffer;		/* keep compiler quiet */
}