#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_4__ {scalar_t__ tli; scalar_t__ begin; int /*<<< orphan*/  end; } ;
typedef  TYPE_1__ TimeLineHistoryEntry ;
struct TYPE_5__ {scalar_t__ tli; scalar_t__ begin; int /*<<< orphan*/  end; } ;

/* Variables and functions */
 int /*<<< orphan*/  ControlFile_source ; 
 int /*<<< orphan*/  ControlFile_target ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_2__* targetHistory ; 
 int targetNentries ; 

__attribute__((used)) static void
FUNC5(XLogRecPtr *recptr, int *tliIndex)
{
	TimeLineHistoryEntry *sourceHistory;
	int			sourceNentries;
	int			i,
				n;

	/* Retrieve timelines for both source and target */
	sourceHistory = FUNC2(&ControlFile_source, &sourceNentries);
	targetHistory = FUNC2(&ControlFile_target, &targetNentries);

	/*
	 * Trace the history forward, until we hit the timeline diverge. It may
	 * still be possible that the source and target nodes used the same
	 * timeline number in their history but with different start position
	 * depending on the history files that each node has fetched in previous
	 * recovery processes. Hence check the start position of the new timeline
	 * as well and move down by one extra timeline entry if they do not match.
	 */
	n = FUNC0(sourceNentries, targetNentries);
	for (i = 0; i < n; i++)
	{
		if (sourceHistory[i].tli != targetHistory[i].tli ||
			sourceHistory[i].begin != targetHistory[i].begin)
			break;
	}

	if (i > 0)
	{
		i--;
		*recptr = FUNC1(sourceHistory[i].end, targetHistory[i].end);
		*tliIndex = i;

		FUNC4(sourceHistory);
		return;
	}
	else
	{
		FUNC3("could not find common ancestor of the source and target cluster's timelines");
	}
}