#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_10__ {scalar_t__ forkNum; scalar_t__ blockNum; int /*<<< orphan*/  rnode; } ;
struct TYPE_12__ {TYPE_1__ tag; } ;
struct TYPE_11__ {scalar_t__ backend; int /*<<< orphan*/  node; } ;
typedef  TYPE_2__ RelFileNodeBackend ;
typedef  scalar_t__ ForkNumber ;
typedef  TYPE_3__ BufferDesc ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ MyBackendId ; 
 int NBuffers ; 
 scalar_t__ FUNC4 (TYPE_2__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void
FUNC7(RelFileNodeBackend rnode, ForkNumber *forkNum,
					   int nforks, BlockNumber *firstDelBlock)
{
	int			i;
	int			j;

	/* If it's a local relation, it's localbuf.c's problem. */
	if (FUNC4(rnode))
	{
		if (rnode.backend == MyBackendId)
		{
			for (j = 0; j < nforks; j++)
				FUNC0(rnode.node, forkNum[j],
											firstDelBlock[j]);
		}
		return;
	}

	for (i = 0; i < NBuffers; i++)
	{
		BufferDesc *bufHdr = FUNC1(i);
		uint32		buf_state;

		/*
		 * We can make this a tad faster by prechecking the buffer tag before
		 * we attempt to lock the buffer; this saves a lot of lock
		 * acquisitions in typical cases.  It should be safe because the
		 * caller must have AccessExclusiveLock on the relation, or some other
		 * reason to be certain that no one is loading new pages of the rel
		 * into the buffer pool.  (Otherwise we might well miss such pages
		 * entirely.)  Therefore, while the tag might be changing while we
		 * look at it, it can't be changing *to* a value we care about, only
		 * *away* from such a value.  So false negatives are impossible, and
		 * false positives are safe because we'll recheck after getting the
		 * buffer lock.
		 *
		 * We could check forkNum and blockNum as well as the rnode, but the
		 * incremental win from doing so seems small.
		 */
		if (!FUNC5(bufHdr->tag.rnode, rnode.node))
			continue;

		buf_state = FUNC3(bufHdr);

		for (j = 0; j < nforks; j++)
		{
			if (FUNC5(bufHdr->tag.rnode, rnode.node) &&
				bufHdr->tag.forkNum == forkNum[j] &&
				bufHdr->tag.blockNum >= firstDelBlock[j])
			{
				FUNC2(bufHdr); /* releases spinlock */
				break;
			}
		}
		if (j >= nforks)
			FUNC6(bufHdr, buf_state);
	}
}