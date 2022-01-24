#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsm_segment ;
struct TYPE_11__ {int prewarm_start_idx; int prewarm_stop_idx; int /*<<< orphan*/  prewarmed_blocks; int /*<<< orphan*/  database; int /*<<< orphan*/  block_info_handle; } ;
struct TYPE_10__ {scalar_t__ database; scalar_t__ filenode; scalar_t__ forknum; scalar_t__ blocknum; int /*<<< orphan*/  tablespace; } ;
struct TYPE_9__ {int /*<<< orphan*/  rd_smgr; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;
typedef  TYPE_2__ BlockInfoRecord ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidForkNumber ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ MAX_FORKNUM ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 TYPE_5__* apw_state ; 
 int /*<<< orphan*/  die ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC25(Datum main_arg)
{
	int			pos;
	BlockInfoRecord *block_info;
	Relation	rel = NULL;
	BlockNumber nblocks = 0;
	BlockInfoRecord *old_blk = NULL;
	dsm_segment *seg;

	/* Establish signal handlers; once that's done, unblock signals. */
	FUNC21(SIGTERM, die);
	FUNC2();

	/* Connect to correct database and get block information. */
	FUNC13();
	seg = FUNC14(apw_state->block_info_handle);
	if (seg == NULL)
		FUNC17(ERROR,
				(FUNC18(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC19("could not map dynamic shared memory segment")));
	FUNC1(apw_state->database, InvalidOid, 0);
	block_info = (BlockInfoRecord *) FUNC16(seg);
	pos = apw_state->prewarm_start_idx;

	/*
	 * Loop until we run out of blocks to prewarm or until we run out of free
	 * buffers.
	 */
	while (pos < apw_state->prewarm_stop_idx && FUNC20())
	{
		BlockInfoRecord *blk = &block_info[pos++];
		Buffer		buf;

		FUNC4();

		/*
		 * Quit if we've reached records for another database. If previous
		 * blocks are of some global objects, then continue pre-warming.
		 */
		if (old_blk != NULL && old_blk->database != blk->database &&
			old_blk->database != 0)
			break;

		/*
		 * As soon as we encounter a block of a new relation, close the old
		 * relation. Note that rel will be NULL if try_relation_open failed
		 * previously; in that case, there is nothing to close.
		 */
		if (old_blk != NULL && old_blk->filenode != blk->filenode &&
			rel != NULL)
		{
			FUNC22(rel, AccessShareLock);
			rel = NULL;
			FUNC5();
		}

		/*
		 * Try to open each new relation, but only once, when we first
		 * encounter it. If it's been dropped, skip the associated blocks.
		 */
		if (old_blk == NULL || old_blk->filenode != blk->filenode)
		{
			Oid			reloid;

			FUNC0(rel == NULL);
			FUNC12();
			reloid = FUNC11(blk->tablespace, blk->filenode);
			if (FUNC6(reloid))
				rel = FUNC24(reloid, AccessShareLock);

			if (!rel)
				FUNC5();
		}
		if (!rel)
		{
			old_blk = blk;
			continue;
		}

		/* Once per fork, check for fork existence and size. */
		if (old_blk == NULL ||
			old_blk->filenode != blk->filenode ||
			old_blk->forknum != blk->forknum)
		{
			FUNC9(rel);

			/*
			 * smgrexists is not safe for illegal forknum, hence check whether
			 * the passed forknum is valid before using it in smgrexists.
			 */
			if (blk->forknum > InvalidForkNumber &&
				blk->forknum <= MAX_FORKNUM &&
				FUNC23(rel->rd_smgr, blk->forknum))
				nblocks = FUNC8(rel, blk->forknum);
			else
				nblocks = 0;
		}

		/* Check whether blocknum is valid and within fork file size. */
		if (blk->blocknum >= nblocks)
		{
			/* Move to next forknum. */
			old_blk = blk;
			continue;
		}

		/* Prewarm buffer. */
		buf = FUNC7(rel, blk->forknum, blk->blocknum, RBM_NORMAL,
								 NULL);
		if (FUNC3(buf))
		{
			apw_state->prewarmed_blocks++;
			FUNC10(buf);
		}

		old_blk = blk;
	}

	FUNC15(seg);

	/* Release lock on previous relation. */
	if (rel)
	{
		FUNC22(rel, AccessShareLock);
		FUNC5();
	}
}