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
struct stat {int dummy; } ;
typedef  scalar_t__ XLogSegNo ;

/* Variables and functions */
 int /*<<< orphan*/  ControlFileLock ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  ThisTimeLineID ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  wal_segment_size ; 

__attribute__((used)) static bool
FUNC6(XLogSegNo *segno, char *tmppath,
					   bool find_free, XLogSegNo max_segno,
					   bool use_lock)
{
	char		path[MAXPGPATH];
	struct stat stat_buf;

	FUNC2(path, ThisTimeLineID, *segno, wal_segment_size);

	/*
	 * We want to be sure that only one process does this at a time.
	 */
	if (use_lock)
		FUNC0(ControlFileLock, LW_EXCLUSIVE);

	if (!find_free)
	{
		/* Force installation: get rid of any pre-existing segment file */
		FUNC4(path, DEBUG1);
	}
	else
	{
		/* Find a free slot to put it in */
		while (FUNC5(path, &stat_buf) == 0)
		{
			if ((*segno) >= max_segno)
			{
				/* Failed to find a free slot within specified range */
				if (use_lock)
					FUNC1(ControlFileLock);
				return false;
			}
			(*segno)++;
			FUNC2(path, ThisTimeLineID, *segno, wal_segment_size);
		}
	}

	/*
	 * Perform the rename using link if available, paranoidly trying to avoid
	 * overwriting an existing file (there shouldn't be one).
	 */
	if (FUNC3(tmppath, path, LOG) != 0)
	{
		if (use_lock)
			FUNC1(ControlFileLock);
		/* durable_link_or_rename already emitted log message */
		return false;
	}

	if (use_lock)
		FUNC1(ControlFileLock);

	return true;
}