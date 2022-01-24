#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xl_xact_prepare ;
typedef  int /*<<< orphan*/  xl_xact_commit ;
struct TYPE_3__ {int /*<<< orphan*/  xtop; } ;
typedef  TYPE_1__ xl_xact_assignment ;
typedef  int /*<<< orphan*/  xl_xact_abort ;
typedef  scalar_t__ uint8 ;
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 scalar_t__ XLOG_XACT_ABORT ; 
 scalar_t__ XLOG_XACT_ABORT_PREPARED ; 
 scalar_t__ XLOG_XACT_ASSIGNMENT ; 
 scalar_t__ XLOG_XACT_COMMIT ; 
 scalar_t__ XLOG_XACT_COMMIT_PREPARED ; 
 scalar_t__ XLOG_XACT_OPMASK ; 
 scalar_t__ XLOG_XACT_PREPARE ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

void
FUNC8(StringInfo buf, XLogReaderState *record)
{
	char	   *rec = FUNC0(record);
	uint8		info = FUNC1(record) & XLOG_XACT_OPMASK;

	if (info == XLOG_XACT_COMMIT || info == XLOG_XACT_COMMIT_PREPARED)
	{
		xl_xact_commit *xlrec = (xl_xact_commit *) rec;

		FUNC6(buf, FUNC1(record), xlrec,
						 FUNC2(record));
	}
	else if (info == XLOG_XACT_ABORT || info == XLOG_XACT_ABORT_PREPARED)
	{
		xl_xact_abort *xlrec = (xl_xact_abort *) rec;

		FUNC4(buf, FUNC1(record), xlrec);
	}
	else if (info == XLOG_XACT_PREPARE)
	{
		xl_xact_prepare *xlrec = (xl_xact_prepare *) rec;

		FUNC7(buf, FUNC1(record), xlrec);
	}
	else if (info == XLOG_XACT_ASSIGNMENT)
	{
		xl_xact_assignment *xlrec = (xl_xact_assignment *) rec;

		/*
		 * Note that we ignore the WAL record's xid, since we're more
		 * interested in the top-level xid that issued the record and which
		 * xids are being reported here.
		 */
		FUNC3(buf, "xtop %u: ", xlrec->xtop);
		FUNC5(buf, xlrec);
	}
}