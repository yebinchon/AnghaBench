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
typedef  int /*<<< orphan*/  XLogSegNo ;

/* Variables and functions */
 int /*<<< orphan*/  PANIC ; 
#define  SYNC_METHOD_FDATASYNC 132 
#define  SYNC_METHOD_FSYNC 131 
#define  SYNC_METHOD_FSYNC_WRITETHROUGH 130 
#define  SYNC_METHOD_OPEN 129 
#define  SYNC_METHOD_OPEN_DSYNC 128 
 int /*<<< orphan*/  ThisTimeLineID ; 
 int /*<<< orphan*/  WAIT_EVENT_WAL_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int sync_method ; 

void
FUNC10(int fd, XLogSegNo segno)
{
	FUNC9(WAIT_EVENT_WAL_SYNC);
	switch (sync_method)
	{
		case SYNC_METHOD_FSYNC:
			if (FUNC6(fd) != 0)
				FUNC2(PANIC,
						(FUNC3(),
						 FUNC4("could not fsync file \"%s\": %m",
								FUNC0(ThisTimeLineID, segno))));
			break;
#ifdef HAVE_FSYNC_WRITETHROUGH
		case SYNC_METHOD_FSYNC_WRITETHROUGH:
			if (pg_fsync_writethrough(fd) != 0)
				ereport(PANIC,
						(errcode_for_file_access(),
						 errmsg("could not fsync write-through file \"%s\": %m",
								XLogFileNameP(ThisTimeLineID, segno))));
			break;
#endif
#ifdef HAVE_FDATASYNC
		case SYNC_METHOD_FDATASYNC:
			if (pg_fdatasync(fd) != 0)
				ereport(PANIC,
						(errcode_for_file_access(),
						 errmsg("could not fdatasync file \"%s\": %m",
								XLogFileNameP(ThisTimeLineID, segno))));
			break;
#endif
		case SYNC_METHOD_OPEN:
		case SYNC_METHOD_OPEN_DSYNC:
			/* write synced it already */
			break;
		default:
			FUNC1(PANIC, "unrecognized wal_sync_method: %d", sync_method);
			break;
	}
	FUNC8();
}