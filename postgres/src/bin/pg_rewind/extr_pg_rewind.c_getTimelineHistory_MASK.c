#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int TimeLineID ;
struct TYPE_10__ {int tli; int begin; int end; } ;
typedef  TYPE_2__ TimeLineHistoryEntry ;
struct TYPE_9__ {int ThisTimeLineID; } ;
struct TYPE_11__ {TYPE_1__ checkPointCopy; } ;
typedef  TYPE_3__ ControlFileData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__ ControlFile_source ; 
 TYPE_3__ ControlFile_target ; 
 int InvalidXLogRecPtr ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  datadir_target ; 
 scalar_t__ debug ; 
 char* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int) ; 
 TYPE_2__* FUNC7 (char*,int,int*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int targetNentries ; 

__attribute__((used)) static TimeLineHistoryEntry *
FUNC9(ControlFileData *controlFile, int *nentries)
{
	TimeLineHistoryEntry *history;
	TimeLineID	tli;

	tli = controlFile->checkPointCopy.ThisTimeLineID;

	/*
	 * Timeline 1 does not have a history file, so there is no need to check
	 * and fake an entry with infinite start and end positions.
	 */
	if (tli == 1)
	{
		history = (TimeLineHistoryEntry *) FUNC6(sizeof(TimeLineHistoryEntry));
		history->tli = tli;
		history->begin = history->end = InvalidXLogRecPtr;
		*nentries = 1;
	}
	else
	{
		char		path[MAXPGPATH];
		char	   *histfile;

		FUNC1(path, tli);

		/* Get history file from appropriate source */
		if (controlFile == &ControlFile_source)
			histfile = FUNC2(path, NULL);
		else if (controlFile == &ControlFile_target)
			histfile = FUNC8(datadir_target, path, NULL);
		else
			FUNC3("invalid control file");

		history = FUNC7(histfile, tli, nentries);
		FUNC4(histfile);
	}

	if (debug)
	{
		int			i;

		if (controlFile == &ControlFile_source)
			FUNC5("Source timeline history:");
		else if (controlFile == &ControlFile_target)
			FUNC5("Target timeline history:");
		else
			FUNC0(false);

		/*
		 * Print the target timeline history.
		 */
		for (i = 0; i < targetNentries; i++)
		{
			TimeLineHistoryEntry *entry;

			entry = &history[i];
			FUNC5("%d: %X/%X - %X/%X", entry->tli,
						 (uint32) (entry->begin >> 32), (uint32) (entry->begin),
						 (uint32) (entry->end >> 32), (uint32) (entry->end));
		}
	}

	return history;
}