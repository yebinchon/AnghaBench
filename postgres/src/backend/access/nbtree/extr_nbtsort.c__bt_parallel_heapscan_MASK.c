#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  indtuples; int /*<<< orphan*/  havedead; TYPE_1__* btleader; } ;
struct TYPE_6__ {int nparticipantsdone; int brokenhotchain; double reltuples; int /*<<< orphan*/  workersdonecv; int /*<<< orphan*/  mutex; int /*<<< orphan*/  indtuples; int /*<<< orphan*/  havedead; } ;
struct TYPE_5__ {int nparticipanttuplesorts; TYPE_2__* btshared; } ;
typedef  TYPE_2__ BTShared ;
typedef  TYPE_3__ BTBuildState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WAIT_EVENT_PARALLEL_CREATE_INDEX_SCAN ; 

__attribute__((used)) static double
FUNC4(BTBuildState *buildstate, bool *brokenhotchain)
{
	BTShared   *btshared = buildstate->btleader->btshared;
	int			nparticipanttuplesorts;
	double		reltuples;

	nparticipanttuplesorts = buildstate->btleader->nparticipanttuplesorts;
	for (;;)
	{
		FUNC2(&btshared->mutex);
		if (btshared->nparticipantsdone == nparticipanttuplesorts)
		{
			buildstate->havedead = btshared->havedead;
			buildstate->indtuples = btshared->indtuples;
			*brokenhotchain = btshared->brokenhotchain;
			reltuples = btshared->reltuples;
			FUNC3(&btshared->mutex);
			break;
		}
		FUNC3(&btshared->mutex);

		FUNC1(&btshared->workersdonecv,
							   WAIT_EVENT_PARALLEL_CREATE_INDEX_SCAN);
	}

	FUNC0();

	return reltuples;
}