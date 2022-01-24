#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_14__ {int /*<<< orphan*/  newestCommitTsXid; int /*<<< orphan*/  oldestCommitTsXid; } ;
struct TYPE_13__ {TYPE_2__* shared; } ;
struct TYPE_9__ {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  time; } ;
struct TYPE_12__ {TYPE_1__ dataLastCommit; int /*<<< orphan*/  xidLastCommit; int /*<<< orphan*/  commitTsActive; } ;
struct TYPE_11__ {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  time; } ;
struct TYPE_10__ {scalar_t__* page_buffer; } ;
typedef  int /*<<< orphan*/  RepOriginId ;
typedef  TYPE_3__ CommitTimestampEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CommitTsControlLock ; 
 TYPE_6__* CommitTsCtl ; 
 int /*<<< orphan*/  CommitTsLock ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidRepOriginId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 TYPE_7__* ShmemVariableCache ; 
 int FUNC3 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int SizeOfCommitTimestampEntry ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_5__* commitTsShared ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,scalar_t__,int) ; 

bool
FUNC14(TransactionId xid, TimestampTz *ts,
							 RepOriginId *nodeid)
{
	int			pageno = FUNC8(xid);
	int			entryno = FUNC7(xid);
	int			slotno;
	CommitTimestampEntry entry;
	TransactionId oldestCommitTsXid;
	TransactionId newestCommitTsXid;

	if (!FUNC5(xid))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC11("cannot retrieve commit timestamp for transaction %u", xid)));
	else if (!FUNC4(xid))
	{
		/* frozen and bootstrap xids are always committed far in the past */
		*ts = 0;
		if (nodeid)
			*nodeid = 0;
		return false;
	}

	FUNC1(CommitTsLock, LW_SHARED);

	/* Error if module not enabled */
	if (!commitTsShared->commitTsActive)
		FUNC12();

	/*
	 * If we're asked for the cached value, return that.  Otherwise, fall
	 * through to read from SLRU.
	 */
	if (commitTsShared->xidLastCommit == xid)
	{
		*ts = commitTsShared->dataLastCommit.time;
		if (nodeid)
			*nodeid = commitTsShared->dataLastCommit.nodeid;

		FUNC2(CommitTsLock);
		return *ts != 0;
	}

	oldestCommitTsXid = ShmemVariableCache->oldestCommitTsXid;
	newestCommitTsXid = ShmemVariableCache->newestCommitTsXid;
	/* neither is invalid, or both are */
	FUNC0(FUNC5(oldestCommitTsXid) == FUNC5(newestCommitTsXid));
	FUNC2(CommitTsLock);

	/*
	 * Return empty if the requested value is outside our valid range.
	 */
	if (!FUNC5(oldestCommitTsXid) ||
		FUNC6(xid, oldestCommitTsXid) ||
		FUNC6(newestCommitTsXid, xid))
	{
		*ts = 0;
		if (nodeid)
			*nodeid = InvalidRepOriginId;
		return false;
	}

	/* lock is acquired by SimpleLruReadPage_ReadOnly */
	slotno = FUNC3(CommitTsCtl, pageno, xid);
	FUNC13(&entry,
		   CommitTsCtl->shared->page_buffer[slotno] +
		   SizeOfCommitTimestampEntry * entryno,
		   SizeOfCommitTimestampEntry);

	*ts = entry.time;
	if (nodeid)
		*nodeid = entry.nodeid;

	FUNC2(CommitTsControlLock);
	return *ts != 0;
}