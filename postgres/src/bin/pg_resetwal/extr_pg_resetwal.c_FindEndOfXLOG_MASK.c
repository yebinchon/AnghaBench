#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint64 ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  unsigned int XLogSegNo ;
struct TYPE_3__ {unsigned int redo; } ;
struct TYPE_4__ {unsigned int xlog_seg_size; TYPE_1__ checkPointCopy; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 TYPE_2__ ControlFile ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int WalSegSz ; 
 int /*<<< orphan*/  XLOGDIR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned int newXlogSegNo ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned int*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void
FUNC9(void)
{
	DIR		   *xldir;
	struct dirent *xlde;
	uint64		segs_per_xlogid;
	uint64		xlogbytepos;

	/*
	 * Initialize the max() computation using the last checkpoint address from
	 * old pg_control.  Note that for the moment we are working with segment
	 * numbering according to the old xlog seg size.
	 */
	segs_per_xlogid = (FUNC2(0x0000000100000000) / ControlFile.xlog_seg_size);
	newXlogSegNo = ControlFile.checkPointCopy.redo / ControlFile.xlog_seg_size;

	/*
	 * Scan the pg_wal directory to find existing WAL segment files. We assume
	 * any present have been used; in most scenarios this should be
	 * conservative, because of xlog.c's attempts to pre-create files.
	 */
	xldir = FUNC5(XLOGDIR);
	if (xldir == NULL)
	{
		FUNC6("could not open directory \"%s\": %m", XLOGDIR);
		FUNC4(1);
	}

	while (errno = 0, (xlde = FUNC7(xldir)) != NULL)
	{
		if (FUNC1(xlde->d_name) ||
			FUNC0(xlde->d_name))
		{
			unsigned int tli,
						log,
						seg;
			XLogSegNo	segno;

			/*
			 * Note: We don't use XLogFromFileName here, because we want to
			 * use the segment size from the control file, not the size the
			 * pg_resetwal binary was compiled with
			 */
			FUNC8(xlde->d_name, "%08X%08X%08X", &tli, &log, &seg);
			segno = ((uint64) log) * segs_per_xlogid + seg;

			/*
			 * Note: we take the max of all files found, regardless of their
			 * timelines.  Another possibility would be to ignore files of
			 * timelines other than the target TLI, but this seems safer.
			 * Better too large a result than too small...
			 */
			if (segno > newXlogSegNo)
				newXlogSegNo = segno;
		}
	}

	if (errno)
	{
		FUNC6("could not read directory \"%s\": %m", XLOGDIR);
		FUNC4(1);
	}

	if (FUNC3(xldir))
	{
		FUNC6("could not close directory \"%s\": %m", XLOGDIR);
		FUNC4(1);
	}

	/*
	 * Finally, convert to new xlog seg size, and advance by one to ensure we
	 * are in virgin territory.
	 */
	xlogbytepos = newXlogSegNo * ControlFile.xlog_seg_size;
	newXlogSegNo = (xlogbytepos + ControlFile.xlog_seg_size - 1) / WalSegSz;
	newXlogSegNo++;
}