#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int mdfd_segno; } ;
struct TYPE_13__ {size_t* md_num_open_segs; TYPE_2__** md_seg_fds; } ;
typedef  TYPE_1__* SMgrRelation ;
typedef  TYPE_2__ MdfdVec ;
typedef  size_t ForkNumber ;
typedef  size_t BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BLCKSZ ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int EXTENSION_CREATE ; 
 int EXTENSION_CREATE_RECOVERY ; 
 int EXTENSION_DONT_CHECK_SIZE ; 
 int EXTENSION_FAIL ; 
 int EXTENSION_RETURN_NULL ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ InRecovery ; 
 int O_CREAT ; 
 scalar_t__ RELSEG_SIZE ; 
 TYPE_2__* FUNC2 (TYPE_1__*,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,size_t) ; 
 size_t FUNC4 (TYPE_1__*,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,size_t,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,size_t,size_t,char*,int) ; 
 TYPE_2__* FUNC10 (TYPE_1__*,size_t,int) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static MdfdVec *
FUNC13(SMgrRelation reln, ForkNumber forknum, BlockNumber blkno,
			 bool skipFsync, int behavior)
{
	MdfdVec    *v;
	BlockNumber targetseg;
	BlockNumber nextsegno;

	/* some way to handle non-existent segments needs to be specified */
	FUNC0(behavior &
		   (EXTENSION_FAIL | EXTENSION_CREATE | EXTENSION_RETURN_NULL));

	targetseg = blkno / ((BlockNumber) RELSEG_SIZE);

	/* if an existing and opened segment, we're done */
	if (targetseg < reln->md_num_open_segs[forknum])
	{
		v = &reln->md_seg_fds[forknum][targetseg];
		return v;
	}

	/*
	 * The target segment is not yet open. Iterate over all the segments
	 * between the last opened and the target segment. This way missing
	 * segments either raise an error, or get created (according to
	 * 'behavior'). Start with either the last opened, or the first segment if
	 * none was opened before.
	 */
	if (reln->md_num_open_segs[forknum] > 0)
		v = &reln->md_seg_fds[forknum][reln->md_num_open_segs[forknum] - 1];
	else
	{
		v = FUNC10(reln, forknum, behavior);
		if (!v)
			return NULL;		/* if behavior & EXTENSION_RETURN_NULL */
	}

	for (nextsegno = reln->md_num_open_segs[forknum];
		 nextsegno <= targetseg; nextsegno++)
	{
		BlockNumber nblocks = FUNC4(reln, forknum, v);
		int			flags = 0;

		FUNC0(nextsegno == v->mdfd_segno + 1);

		if (nblocks > ((BlockNumber) RELSEG_SIZE))
			FUNC5(FATAL, "segment too big");

		if ((behavior & EXTENSION_CREATE) ||
			(InRecovery && (behavior & EXTENSION_CREATE_RECOVERY)))
		{
			/*
			 * Normally we will create new segments only if authorized by the
			 * caller (i.e., we are doing mdextend()).  But when doing WAL
			 * recovery, create segments anyway; this allows cases such as
			 * replaying WAL data that has a write into a high-numbered
			 * segment of a relation that was later deleted. We want to go
			 * ahead and create the segments so we can finish out the replay.
			 *
			 * We have to maintain the invariant that segments before the last
			 * active segment are of size RELSEG_SIZE; therefore, if
			 * extending, pad them out with zeroes if needed.  (This only
			 * matters if in recovery, or if the caller is extending the
			 * relation discontiguously, but that can happen in hash indexes.)
			 */
			if (nblocks < ((BlockNumber) RELSEG_SIZE))
			{
				char	   *zerobuf = FUNC11(BLCKSZ);

				FUNC9(reln, forknum,
						 nextsegno * ((BlockNumber) RELSEG_SIZE) - 1,
						 zerobuf, skipFsync);
				FUNC12(zerobuf);
			}
			flags = O_CREAT;
		}
		else if (!(behavior & EXTENSION_DONT_CHECK_SIZE) &&
				 nblocks < ((BlockNumber) RELSEG_SIZE))
		{
			/*
			 * When not extending (or explicitly including truncated
			 * segments), only open the next segment if the current one is
			 * exactly RELSEG_SIZE.  If not (this branch), either return NULL
			 * or fail.
			 */
			if (behavior & EXTENSION_RETURN_NULL)
			{
				/*
				 * Some callers discern between reasons for _mdfd_getseg()
				 * returning NULL based on errno. As there's no failing
				 * syscall involved in this case, explicitly set errno to
				 * ENOENT, as that seems the closest interpretation.
				 */
				errno = ENOENT;
				return NULL;
			}

			FUNC6(ERROR,
					(FUNC7(),
					 FUNC8("could not open file \"%s\" (target block %u): previous segment is only %u blocks",
							FUNC3(reln, forknum, nextsegno),
							blkno, nblocks)));
		}

		v = FUNC2(reln, forknum, nextsegno, flags);

		if (v == NULL)
		{
			if ((behavior & EXTENSION_RETURN_NULL) &&
				FUNC1(errno))
				return NULL;
			FUNC6(ERROR,
					(FUNC7(),
					 FUNC8("could not open file \"%s\" (target block %u): %m",
							FUNC3(reln, forknum, nextsegno),
							blkno)));
		}
	}

	return v;
}