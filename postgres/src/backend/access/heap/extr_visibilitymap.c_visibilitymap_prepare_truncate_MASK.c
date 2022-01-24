#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8 ;
typedef  scalar_t__ uint32 ;
struct TYPE_7__ {int /*<<< orphan*/  rd_smgr; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  InRecovery ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MAPSIZE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VISIBILITYMAP_FORKNUM ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,scalar_t__,int) ; 

BlockNumber
FUNC21(Relation rel, BlockNumber nheapblocks)
{
	BlockNumber newnblocks;

	/* last remaining block, byte, and bit */
	BlockNumber truncBlock = FUNC3(nheapblocks);
	uint32		truncByte = FUNC4(nheapblocks);
	uint8		truncOffset = FUNC5(nheapblocks);

#ifdef TRACE_VISIBILITYMAP
	elog(DEBUG1, "vm_truncate %s %d", RelationGetRelationName(rel), nheapblocks);
#endif

	FUNC12(rel);

	/*
	 * If no visibility map has been created yet for this relation, there's
	 * nothing to truncate.
	 */
	if (!FUNC18(rel->rd_smgr, VISIBILITYMAP_FORKNUM))
		return InvalidBlockNumber;

	/*
	 * Unless the new size is exactly at a visibility map page boundary, the
	 * tail bits in the last remaining map page, representing truncated heap
	 * blocks, need to be cleared. This is not only tidy, but also necessary
	 * because we don't get a chance to clear the bits if the heap is extended
	 * again.
	 */
	if (truncByte != 0 || truncOffset != 0)
	{
		Buffer		mapBuffer;
		Page		page;
		char	   *map;

		newnblocks = truncBlock + 1;

		mapBuffer = FUNC20(rel, truncBlock, false);
		if (!FUNC1(mapBuffer))
		{
			/* nothing to do, the file was already smaller */
			return InvalidBlockNumber;
		}

		page = FUNC0(mapBuffer);
		map = FUNC9(page);

		FUNC6(mapBuffer, BUFFER_LOCK_EXCLUSIVE);

		/* NO EREPORT(ERROR) from here till changes are logged */
		FUNC13();

		/* Clear out the unwanted bytes. */
		FUNC8(&map[truncByte + 1], 0, MAPSIZE - (truncByte + 1));

		/*----
		 * Mask out the unwanted bits of the last remaining byte.
		 *
		 * ((1 << 0) - 1) = 00000000
		 * ((1 << 1) - 1) = 00000001
		 * ...
		 * ((1 << 6) - 1) = 00111111
		 * ((1 << 7) - 1) = 01111111
		 *----
		 */
		map[truncByte] &= (1 << truncOffset) - 1;

		/*
		 * Truncation of a relation is WAL-logged at a higher-level, and we
		 * will be called at WAL replay. But if checksums are enabled, we need
		 * to still write a WAL record to protect against a torn page, if the
		 * page is flushed to disk before the truncation WAL record. We cannot
		 * use MarkBufferDirtyHint here, because that will not dirty the page
		 * during recovery.
		 */
		FUNC7(mapBuffer);
		if (!InRecovery && FUNC11(rel) && FUNC15())
			FUNC17(mapBuffer, false);

		FUNC2();

		FUNC14(mapBuffer);
	}
	else
		newnblocks = truncBlock;

	if (FUNC19(rel->rd_smgr, VISIBILITYMAP_FORKNUM) <= newnblocks)
	{
		/* nothing to do, the file was already smaller than requested size */
		return InvalidBlockNumber;
	}

	return newnblocks;
}