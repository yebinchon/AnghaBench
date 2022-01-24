#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nlocks; TYPE_1__* locks; } ;
typedef  TYPE_2__ xl_standby_locks ;
typedef  int /*<<< orphan*/  xl_running_xacts ;
struct TYPE_6__ {int /*<<< orphan*/  relcacheInitFileInval; int /*<<< orphan*/  tsId; int /*<<< orphan*/  dbId; int /*<<< orphan*/  msgs; int /*<<< orphan*/  nmsgs; } ;
typedef  TYPE_3__ xl_invalidations ;
typedef  scalar_t__ uint8 ;
typedef  int /*<<< orphan*/  XLogReaderState ;
struct TYPE_4__ {int /*<<< orphan*/  relOid; int /*<<< orphan*/  dbOid; int /*<<< orphan*/  xid; } ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 scalar_t__ XLOG_INVALIDATIONS ; 
 scalar_t__ XLOG_RUNNING_XACTS ; 
 scalar_t__ XLOG_STANDBY_LOCK ; 
 scalar_t__ XLR_INFO_MASK ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(StringInfo buf, XLogReaderState *record)
{
	char	   *rec = FUNC0(record);
	uint8		info = FUNC1(record) & ~XLR_INFO_MASK;

	if (info == XLOG_STANDBY_LOCK)
	{
		xl_standby_locks *xlrec = (xl_standby_locks *) rec;
		int			i;

		for (i = 0; i < xlrec->nlocks; i++)
			FUNC2(buf, "xid %u db %u rel %u ",
							 xlrec->locks[i].xid, xlrec->locks[i].dbOid,
							 xlrec->locks[i].relOid);
	}
	else if (info == XLOG_RUNNING_XACTS)
	{
		xl_running_xacts *xlrec = (xl_running_xacts *) rec;

		FUNC4(buf, xlrec);
	}
	else if (info == XLOG_INVALIDATIONS)
	{
		xl_invalidations *xlrec = (xl_invalidations *) rec;

		FUNC3(buf, xlrec->nmsgs, xlrec->msgs,
								   xlrec->dbId, xlrec->tsId,
								   xlrec->relcacheInitFileInval);
	}
}