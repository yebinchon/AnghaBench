#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  twophase_xid; } ;
typedef  TYPE_1__ xl_xact_parsed_commit ;
struct TYPE_16__ {int /*<<< orphan*/  twophase_xid; } ;
typedef  TYPE_2__ xl_xact_parsed_abort ;
typedef  int /*<<< orphan*/  xl_xact_commit ;
struct TYPE_17__ {int /*<<< orphan*/  xsub; int /*<<< orphan*/  nsubxacts; int /*<<< orphan*/  xtop; } ;
typedef  TYPE_3__ xl_xact_assignment ;
typedef  int /*<<< orphan*/  xl_xact_abort ;
typedef  scalar_t__ uint8 ;
struct TYPE_18__ {int /*<<< orphan*/  EndRecPtr; int /*<<< orphan*/  ReadRecPtr; } ;
typedef  TYPE_4__ XLogReaderState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ STANDBY_INITIALIZED ; 
 int /*<<< orphan*/  TwoPhaseStateLock ; 
 scalar_t__ XLOG_XACT_ABORT ; 
 scalar_t__ XLOG_XACT_ABORT_PREPARED ; 
 scalar_t__ XLOG_XACT_ASSIGNMENT ; 
 scalar_t__ XLOG_XACT_COMMIT ; 
 scalar_t__ XLOG_XACT_COMMIT_PREPARED ; 
 scalar_t__ XLOG_XACT_OPMASK ; 
 scalar_t__ XLOG_XACT_PREPARE ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ standbyState ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC16(XLogReaderState *record)
{
	uint8		info = FUNC9(record) & XLOG_XACT_OPMASK;

	/* Backup blocks are not used in xact records */
	FUNC0(!FUNC12(record));

	if (info == XLOG_XACT_COMMIT)
	{
		xl_xact_commit *xlrec = (xl_xact_commit *) FUNC8(record);
		xl_xact_parsed_commit parsed;

		FUNC4(FUNC9(record), xlrec, &parsed);
		FUNC15(&parsed, FUNC11(record),
						 record->EndRecPtr, FUNC10(record));
	}
	else if (info == XLOG_XACT_COMMIT_PREPARED)
	{
		xl_xact_commit *xlrec = (xl_xact_commit *) FUNC8(record);
		xl_xact_parsed_commit parsed;

		FUNC4(FUNC9(record), xlrec, &parsed);
		FUNC15(&parsed, parsed.twophase_xid,
						 record->EndRecPtr, FUNC10(record));

		/* Delete TwoPhaseState gxact entry and/or 2PC file. */
		FUNC1(TwoPhaseStateLock, LW_EXCLUSIVE);
		FUNC6(parsed.twophase_xid, false);
		FUNC2(TwoPhaseStateLock);
	}
	else if (info == XLOG_XACT_ABORT)
	{
		xl_xact_abort *xlrec = (xl_xact_abort *) FUNC8(record);
		xl_xact_parsed_abort parsed;

		FUNC3(FUNC9(record), xlrec, &parsed);
		FUNC14(&parsed, FUNC11(record));
	}
	else if (info == XLOG_XACT_ABORT_PREPARED)
	{
		xl_xact_abort *xlrec = (xl_xact_abort *) FUNC8(record);
		xl_xact_parsed_abort parsed;

		FUNC3(FUNC9(record), xlrec, &parsed);
		FUNC14(&parsed, parsed.twophase_xid);

		/* Delete TwoPhaseState gxact entry and/or 2PC file. */
		FUNC1(TwoPhaseStateLock, LW_EXCLUSIVE);
		FUNC6(parsed.twophase_xid, false);
		FUNC2(TwoPhaseStateLock);
	}
	else if (info == XLOG_XACT_PREPARE)
	{
		/*
		 * Store xid and start/end pointers of the WAL record in TwoPhaseState
		 * gxact entry.
		 */
		FUNC1(TwoPhaseStateLock, LW_EXCLUSIVE);
		FUNC5(FUNC8(record),
					   record->ReadRecPtr,
					   record->EndRecPtr,
					   FUNC10(record));
		FUNC2(TwoPhaseStateLock);
	}
	else if (info == XLOG_XACT_ASSIGNMENT)
	{
		xl_xact_assignment *xlrec = (xl_xact_assignment *) FUNC8(record);

		if (standbyState >= STANDBY_INITIALIZED)
			FUNC7(xlrec->xtop,
										xlrec->nsubxacts, xlrec->xsub);
	}
	else
		FUNC13(PANIC, "xact_redo: unknown op code %u", info);
}