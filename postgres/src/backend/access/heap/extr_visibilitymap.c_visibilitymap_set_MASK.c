#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  size_t uint32 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_5__ {int /*<<< orphan*/  rd_node; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 size_t FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ InRecovery ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int VISIBILITYMAP_VALID_BITS ; 
 scalar_t__ FUNC16 () ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC20(Relation rel, BlockNumber heapBlk, Buffer heapBuf,
				  XLogRecPtr recptr, Buffer vmBuf, TransactionId cutoff_xid,
				  uint8 flags)
{
	BlockNumber mapBlock = FUNC5(heapBlk);
	uint32		mapByte = FUNC6(heapBlk);
	uint8		mapOffset = FUNC7(heapBlk);
	Page		page;
	uint8	   *map;

#ifdef TRACE_VISIBILITYMAP
	elog(DEBUG1, "vm_set %s %d", RelationGetRelationName(rel), heapBlk);
#endif

	FUNC0(InRecovery || FUNC17(recptr));
	FUNC0(InRecovery || FUNC3(heapBuf));
	FUNC0(flags & VISIBILITYMAP_VALID_BITS);

	/* Check that we have the right heap page pinned, if present */
	if (FUNC3(heapBuf) && FUNC1(heapBuf) != heapBlk)
		FUNC18(ERROR, "wrong heap buffer passed to visibilitymap_set");

	/* Check that we have the right VM page pinned */
	if (!FUNC3(vmBuf) || FUNC1(vmBuf) != mapBlock)
		FUNC18(ERROR, "wrong VM buffer passed to visibilitymap_set");

	page = FUNC2(vmBuf);
	map = (uint8 *) FUNC10(page);
	FUNC8(vmBuf, BUFFER_LOCK_EXCLUSIVE);

	if (flags != (map[mapByte] >> mapOffset & VISIBILITYMAP_VALID_BITS))
	{
		FUNC15();

		map[mapByte] |= (flags << mapOffset);
		FUNC9(vmBuf);

		if (FUNC14(rel))
		{
			if (FUNC17(recptr))
			{
				FUNC0(!InRecovery);
				recptr = FUNC19(rel->rd_node, heapBuf, vmBuf,
										  cutoff_xid, flags);

				/*
				 * If data checksums are enabled (or wal_log_hints=on), we
				 * need to protect the heap page from being torn.
				 */
				if (FUNC16())
				{
					Page		heapPage = FUNC2(heapBuf);

					/* caller is expected to set PD_ALL_VISIBLE first */
					FUNC0(FUNC11(heapPage));
					FUNC12(heapPage, recptr);
				}
			}
			FUNC12(page, recptr);
		}

		FUNC4();
	}

	FUNC8(vmBuf, BUFFER_LOCK_UNLOCK);
}