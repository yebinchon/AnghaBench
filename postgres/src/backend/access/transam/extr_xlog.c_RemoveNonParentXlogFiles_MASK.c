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
struct dirent {scalar_t__ d_name; } ;
typedef  int /*<<< orphan*/  XLogSegNo ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TimeLineID ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int MAXFNAMELEN ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOGDIR ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC9 (scalar_t__,char*) ; 
 scalar_t__ FUNC10 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  wal_segment_size ; 

__attribute__((used)) static void
FUNC11(XLogRecPtr switchpoint, TimeLineID newTLI)
{
	DIR		   *xldir;
	struct dirent *xlde;
	char		switchseg[MAXFNAMELEN];
	XLogSegNo	endLogSegNo;

	FUNC5(switchpoint, endLogSegNo, wal_segment_size);

	/*
	 * Construct a filename of the last segment to be kept.
	 */
	FUNC7(switchseg, newTLI, endLogSegNo, wal_segment_size);

	FUNC8(DEBUG2, "attempting to remove WAL segments newer than log file %s",
		 switchseg);

	xldir = FUNC0(XLOGDIR);

	while ((xlde = FUNC3(xldir, XLOGDIR)) != NULL)
	{
		/* Ignore files that are not XLOG segments */
		if (!FUNC2(xlde->d_name))
			continue;

		/*
		 * Remove files that are on a timeline older than the new one we're
		 * switching to, but with a segment number >= the first segment on the
		 * new timeline.
		 */
		if (FUNC10(xlde->d_name, switchseg, 8) < 0 &&
			FUNC9(xlde->d_name + 8, switchseg + 8) > 0)
		{
			/*
			 * If the file has already been marked as .ready, however, don't
			 * remove it yet. It should be OK to remove it - files that are
			 * not part of our timeline history are not required for recovery
			 * - but seems safer to let them be archived and removed later.
			 */
			if (!FUNC6(xlde->d_name))
				FUNC4(xlde->d_name, InvalidXLogRecPtr, switchpoint);
		}
	}

	FUNC1(xldir);
}