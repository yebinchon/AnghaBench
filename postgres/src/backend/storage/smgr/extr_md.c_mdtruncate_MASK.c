#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int off_t ;
struct TYPE_10__ {int /*<<< orphan*/  mdfd_vfd; } ;
struct TYPE_9__ {int* md_num_open_segs; TYPE_2__** md_seg_fds; int /*<<< orphan*/  smgr_rnode; } ;
typedef  TYPE_1__* SMgrRelation ;
typedef  TYPE_2__ MdfdVec ;
typedef  size_t ForkNumber ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BLCKSZ ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ InRecovery ; 
 int RELSEG_SIZE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  WAIT_EVENT_DATA_FILE_TRUNCATE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC9 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,size_t) ; 

void
FUNC12(SMgrRelation reln, ForkNumber forknum, BlockNumber nblocks)
{
	BlockNumber curnblk;
	BlockNumber priorblocks;
	int			curopensegs;

	/*
	 * NOTE: mdnblocks makes sure we have opened all active segments, so that
	 * truncation loop will get them all!
	 */
	curnblk = FUNC9(reln, forknum);
	if (nblocks > curnblk)
	{
		/* Bogus request ... but no complaint if InRecovery */
		if (InRecovery)
			return;
		FUNC6(ERROR,
				(FUNC8("could not truncate file \"%s\" to %u blocks: it's only %u blocks now",
						FUNC11(reln->smgr_rnode, forknum),
						nblocks, curnblk)));
	}
	if (nblocks == curnblk)
		return;					/* no work */

	/*
	 * Truncate segments, starting at the last one. Starting at the end makes
	 * managing the memory for the fd array easier, should there be errors.
	 */
	curopensegs = reln->md_num_open_segs[forknum];
	while (curopensegs > 0)
	{
		MdfdVec    *v;

		priorblocks = (curopensegs - 1) * RELSEG_SIZE;

		v = &reln->md_seg_fds[forknum][curopensegs - 1];

		if (priorblocks > nblocks)
		{
			/*
			 * This segment is no longer active. We truncate the file, but do
			 * not delete it, for reasons explained in the header comments.
			 */
			if (FUNC3(v->mdfd_vfd, 0, WAIT_EVENT_DATA_FILE_TRUNCATE) < 0)
				FUNC6(ERROR,
						(FUNC7(),
						 FUNC8("could not truncate file \"%s\": %m",
								FUNC2(v->mdfd_vfd))));

			if (!FUNC4(reln))
				FUNC10(reln, forknum, v);

			/* we never drop the 1st segment */
			FUNC0(v != &reln->md_seg_fds[forknum][0]);

			FUNC1(v->mdfd_vfd);
			FUNC5(reln, forknum, curopensegs - 1);
		}
		else if (priorblocks + ((BlockNumber) RELSEG_SIZE) > nblocks)
		{
			/*
			 * This is the last segment we want to keep. Truncate the file to
			 * the right length. NOTE: if nblocks is exactly a multiple K of
			 * RELSEG_SIZE, we will truncate the K+1st segment to 0 length but
			 * keep it. This adheres to the invariant given in the header
			 * comments.
			 */
			BlockNumber lastsegblocks = nblocks - priorblocks;

			if (FUNC3(v->mdfd_vfd, (off_t) lastsegblocks * BLCKSZ, WAIT_EVENT_DATA_FILE_TRUNCATE) < 0)
				FUNC6(ERROR,
						(FUNC7(),
						 FUNC8("could not truncate file \"%s\" to %u blocks: %m",
								FUNC2(v->mdfd_vfd),
								nblocks)));
			if (!FUNC4(reln))
				FUNC10(reln, forknum, v);
		}
		else
		{
			/*
			 * We still need this segment, so nothing to do for this and any
			 * earlier segment.
			 */
			break;
		}
		curopensegs--;
	}
}