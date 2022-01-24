#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8 ;
typedef  size_t uint32 ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 size_t FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char VISIBILITYMAP_VALID_BITS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int) ; 

uint8
FUNC11(Relation rel, BlockNumber heapBlk, Buffer *buf)
{
	BlockNumber mapBlock = FUNC3(heapBlk);
	uint32		mapByte = FUNC4(heapBlk);
	uint8		mapOffset = FUNC5(heapBlk);
	char	   *map;
	uint8		result;

#ifdef TRACE_VISIBILITYMAP
	elog(DEBUG1, "vm_get_status %s %d", RelationGetRelationName(rel), heapBlk);
#endif

	/* Reuse the old pinned buffer if possible */
	if (FUNC2(*buf))
	{
		if (FUNC0(*buf) != mapBlock)
		{
			FUNC8(*buf);
			*buf = InvalidBuffer;
		}
	}

	if (!FUNC2(*buf))
	{
		*buf = FUNC10(rel, mapBlock, false);
		if (!FUNC2(*buf))
			return false;
	}

	map = FUNC6(FUNC1(*buf));

	/*
	 * A single byte read is atomic.  There could be memory-ordering effects
	 * here, but for performance reasons we make it the caller's job to worry
	 * about that.
	 */
	result = ((map[mapByte] >> mapOffset) & VISIBILITYMAP_VALID_BITS);
	return result;
}