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
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nlocks; TYPE_1__* locks; } ;
typedef  TYPE_2__ xl_standby_locks ;
struct TYPE_9__ {int /*<<< orphan*/  xids; int /*<<< orphan*/  oldestRunningXid; int /*<<< orphan*/  latestCompletedXid; int /*<<< orphan*/  nextXid; int /*<<< orphan*/  subxid_overflow; int /*<<< orphan*/  subxcnt; int /*<<< orphan*/  xcnt; } ;
typedef  TYPE_3__ xl_running_xacts ;
struct TYPE_10__ {int /*<<< orphan*/  tsId; int /*<<< orphan*/  dbId; int /*<<< orphan*/  relcacheInitFileInval; int /*<<< orphan*/  nmsgs; int /*<<< orphan*/  msgs; } ;
typedef  TYPE_4__ xl_invalidations ;
typedef  scalar_t__ uint8 ;
typedef  int /*<<< orphan*/  XLogReaderState ;
struct TYPE_11__ {int /*<<< orphan*/  xids; int /*<<< orphan*/  oldestRunningXid; int /*<<< orphan*/  latestCompletedXid; int /*<<< orphan*/  nextXid; int /*<<< orphan*/  subxid_overflow; int /*<<< orphan*/  subxcnt; int /*<<< orphan*/  xcnt; } ;
struct TYPE_7__ {int /*<<< orphan*/  relOid; int /*<<< orphan*/  dbOid; int /*<<< orphan*/  xid; } ;
typedef  TYPE_5__ RunningTransactionsData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ STANDBY_DISABLED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ XLOG_INVALIDATIONS ; 
 scalar_t__ XLOG_RUNNING_XACTS ; 
 scalar_t__ XLOG_STANDBY_LOCK ; 
 scalar_t__ XLR_INFO_MASK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ standbyState ; 

void
FUNC8(XLogReaderState *record)
{
	uint8		info = FUNC5(record) & ~XLR_INFO_MASK;

	/* Backup blocks are not used in standby records */
	FUNC0(!FUNC6(record));

	/* Do nothing if we're not in hot standby mode */
	if (standbyState == STANDBY_DISABLED)
		return;

	if (info == XLOG_STANDBY_LOCK)
	{
		xl_standby_locks *xlrec = (xl_standby_locks *) FUNC4(record);
		int			i;

		for (i = 0; i < xlrec->nlocks; i++)
			FUNC3(xlrec->locks[i].xid,
											  xlrec->locks[i].dbOid,
											  xlrec->locks[i].relOid);
	}
	else if (info == XLOG_RUNNING_XACTS)
	{
		xl_running_xacts *xlrec = (xl_running_xacts *) FUNC4(record);
		RunningTransactionsData running;

		running.xcnt = xlrec->xcnt;
		running.subxcnt = xlrec->subxcnt;
		running.subxid_overflow = xlrec->subxid_overflow;
		running.nextXid = xlrec->nextXid;
		running.latestCompletedXid = xlrec->latestCompletedXid;
		running.oldestRunningXid = xlrec->oldestRunningXid;
		running.xids = xlrec->xids;

		FUNC1(&running);
	}
	else if (info == XLOG_INVALIDATIONS)
	{
		xl_invalidations *xlrec = (xl_invalidations *) FUNC4(record);

		FUNC2(xlrec->msgs,
											 xlrec->nmsgs,
											 xlrec->relcacheInitFileInval,
											 xlrec->dbId,
											 xlrec->tsId);
	}
	else
		FUNC7(PANIC, "standby_redo: unknown op code %u", info);
}