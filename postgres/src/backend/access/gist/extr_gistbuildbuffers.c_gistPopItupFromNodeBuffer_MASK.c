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

/* Type definitions */
struct TYPE_14__ {scalar_t__ prev; } ;
struct TYPE_13__ {int /*<<< orphan*/  pfile; } ;
struct TYPE_12__ {scalar_t__ blocksCount; TYPE_3__* pageBuffer; } ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  TYPE_1__ GISTNodeBuffer ;
typedef  TYPE_2__ GISTBuildBuffers ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

bool
FUNC7(GISTBuildBuffers *gfbb, GISTNodeBuffer *nodeBuffer,
						  IndexTuple *itup)
{
	/*
	 * If node buffer is empty then return false.
	 */
	if (nodeBuffer->blocksCount <= 0)
		return false;

	/* Load last page of node buffer if needed */
	if (!nodeBuffer->pageBuffer)
		FUNC5(gfbb, nodeBuffer);

	/*
	 * Get index tuple from last non-empty page.
	 */
	FUNC4(nodeBuffer->pageBuffer, itup);

	/*
	 * If we just removed the last tuple from the page, fetch previous page on
	 * this node buffer (if any).
	 */
	if (FUNC1(nodeBuffer->pageBuffer))
	{
		BlockNumber prevblkno;

		/*
		 * blocksCount includes the page in pageBuffer, so decrease it now.
		 */
		nodeBuffer->blocksCount--;

		/*
		 * If there's more pages, fetch previous one.
		 */
		prevblkno = nodeBuffer->pageBuffer->prev;
		if (prevblkno != InvalidBlockNumber)
		{
			/* There is a previous page. Fetch it. */
			FUNC0(nodeBuffer->blocksCount > 0);
			FUNC2(gfbb->pfile, prevblkno, nodeBuffer->pageBuffer);

			/*
			 * Now that we've read the block in memory, we can release its
			 * on-disk block for reuse.
			 */
			FUNC3(gfbb, prevblkno);
		}
		else
		{
			/* No more pages. Free memory. */
			FUNC0(nodeBuffer->blocksCount == 0);
			FUNC6(nodeBuffer->pageBuffer);
			nodeBuffer->pageBuffer = NULL;
		}
	}
	return true;
}