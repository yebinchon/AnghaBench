#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__* md_num_open_segs; int /*<<< orphan*/ ** md_seg_fds; } ;
typedef  TYPE_1__* SMgrRelation ;
typedef  int /*<<< orphan*/  MdfdVec ;
typedef  size_t ForkNumber ;
typedef  size_t BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXTENSION_FAIL ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ RELSEG_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,size_t,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (TYPE_1__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 

BlockNumber
FUNC5(SMgrRelation reln, ForkNumber forknum)
{
	MdfdVec    *v = FUNC4(reln, forknum, EXTENSION_FAIL);
	BlockNumber nblocks;
	BlockNumber segno = 0;

	/* mdopen has opened the first segment */
	FUNC0(reln->md_num_open_segs[forknum] > 0);

	/*
	 * Start from the last open segments, to avoid redundant seeks.  We have
	 * previously verified that these segments are exactly RELSEG_SIZE long,
	 * and it's useless to recheck that each time.
	 *
	 * NOTE: this assumption could only be wrong if another backend has
	 * truncated the relation.  We rely on higher code levels to handle that
	 * scenario by closing and re-opening the md fd, which is handled via
	 * relcache flush.  (Since the checkpointer doesn't participate in
	 * relcache flush, it could have segment entries for inactive segments;
	 * that's OK because the checkpointer never needs to compute relation
	 * size.)
	 */
	segno = reln->md_num_open_segs[forknum] - 1;
	v = &reln->md_seg_fds[forknum][segno];

	for (;;)
	{
		nblocks = FUNC2(reln, forknum, v);
		if (nblocks > ((BlockNumber) RELSEG_SIZE))
			FUNC3(FATAL, "segment too big");
		if (nblocks < ((BlockNumber) RELSEG_SIZE))
			return (segno * ((BlockNumber) RELSEG_SIZE)) + nblocks;

		/*
		 * If segment is exactly RELSEG_SIZE, advance to next one.
		 */
		segno++;

		/*
		 * We used to pass O_CREAT here, but that has the disadvantage that it
		 * might create a segment which has vanished through some operating
		 * system misadventure.  In such a case, creating the segment here
		 * undermines _mdfd_getseg's attempts to notice and report an error
		 * upon access to a missing segment.
		 */
		v = FUNC1(reln, forknum, segno, 0);
		if (v == NULL)
			return segno * ((BlockNumber) RELSEG_SIZE);
	}
}