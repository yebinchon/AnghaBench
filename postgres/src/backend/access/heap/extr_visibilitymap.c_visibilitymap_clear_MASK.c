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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int VISIBILITYMAP_VALID_BITS ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

bool
FUNC12(Relation rel, BlockNumber heapBlk, Buffer buf, uint8 flags)
{
	BlockNumber mapBlock = FUNC4(heapBlk);
	int			mapByte = FUNC5(heapBlk);
	int			mapOffset = FUNC6(heapBlk);
	uint8		mask = flags << mapOffset;
	char	   *map;
	bool		cleared = false;

	FUNC0(flags & VISIBILITYMAP_VALID_BITS);

#ifdef TRACE_VISIBILITYMAP
	elog(DEBUG1, "vm_clear %s %d", RelationGetRelationName(rel), heapBlk);
#endif

	if (!FUNC3(buf) || FUNC1(buf) != mapBlock)
		FUNC11(ERROR, "wrong buffer passed to visibilitymap_clear");

	FUNC7(buf, BUFFER_LOCK_EXCLUSIVE);
	map = FUNC9(FUNC2(buf));

	if (map[mapByte] & mask)
	{
		map[mapByte] &= ~mask;

		FUNC8(buf);
		cleared = true;
	}

	FUNC7(buf, BUFFER_LOCK_UNLOCK);

	return cleared;
}