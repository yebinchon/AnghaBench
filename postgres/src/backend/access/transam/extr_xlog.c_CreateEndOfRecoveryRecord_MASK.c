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
struct TYPE_4__ {int /*<<< orphan*/  PrevTimeLineID; void* ThisTimeLineID; int /*<<< orphan*/  end_time; } ;
typedef  TYPE_1__ xl_end_of_recovery ;
typedef  scalar_t__ pg_time_t ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_6__ {void* minRecoveryPointTLI; int /*<<< orphan*/  minRecoveryPoint; scalar_t__ time; } ;
struct TYPE_5__ {int /*<<< orphan*/  PrevTimeLineID; } ;

/* Variables and functions */
 TYPE_3__* ControlFile ; 
 int /*<<< orphan*/  ControlFileLock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int LocalXLogInsertAllowed ; 
 int /*<<< orphan*/  RM_XLOG_ID ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* ThisTimeLineID ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  XLOG_END_OF_RECOVERY ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_2__* XLogCtl ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(void)
{
	xl_end_of_recovery xlrec;
	XLogRecPtr	recptr;

	/* sanity check */
	if (!FUNC5())
		FUNC14(ERROR, "can only be used to end recovery");

	xlrec.end_time = FUNC1();

	FUNC8();
	xlrec.ThisTimeLineID = ThisTimeLineID;
	xlrec.PrevTimeLineID = XLogCtl->PrevTimeLineID;
	FUNC9();

	FUNC4();

	FUNC6();

	FUNC10();
	FUNC13((char *) &xlrec, sizeof(xl_end_of_recovery));
	recptr = FUNC12(RM_XLOG_ID, XLOG_END_OF_RECOVERY);

	FUNC11(recptr);

	/*
	 * Update the control file so that crash recovery can follow the timeline
	 * changes to this point.
	 */
	FUNC2(ControlFileLock, LW_EXCLUSIVE);
	ControlFile->time = (pg_time_t) FUNC15(NULL);
	ControlFile->minRecoveryPoint = recptr;
	ControlFile->minRecoveryPointTLI = ThisTimeLineID;
	FUNC7();
	FUNC3(ControlFileLock);

	FUNC0();

	LocalXLogInsertAllowed = -1;	/* return to "check" state */
}