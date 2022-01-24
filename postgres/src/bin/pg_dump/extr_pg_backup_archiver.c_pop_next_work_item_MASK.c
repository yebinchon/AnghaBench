#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TocEntry ;
struct TYPE_8__ {int first_te; int last_te; int /*<<< orphan*/ ** tes; } ;
struct TYPE_7__ {int numWorkers; int /*<<< orphan*/ ** te; } ;
typedef  TYPE_1__ ParallelState ;
typedef  TYPE_2__ ParallelReadyList ;
typedef  int /*<<< orphan*/  ArchiveHandle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static TocEntry *
FUNC4(ArchiveHandle *AH, ParallelReadyList *ready_list,
				   ParallelState *pstate)
{
	/*
	 * Sort the ready_list so that we'll tackle larger jobs first.
	 */
	FUNC3(ready_list);

	/*
	 * Search the ready_list until we find a suitable item.
	 */
	for (int i = ready_list->first_te; i <= ready_list->last_te; i++)
	{
		TocEntry   *te = ready_list->tes[i];
		bool		conflicts = false;

		/*
		 * Check to see if the item would need exclusive lock on something
		 * that a currently running item also needs lock on, or vice versa. If
		 * so, we don't want to schedule them together.
		 */
		for (int k = 0; k < pstate->numWorkers; k++)
		{
			TocEntry   *running_te = pstate->te[k];

			if (running_te == NULL)
				continue;
			if (FUNC0(te, running_te) ||
				FUNC0(running_te, te))
			{
				conflicts = true;
				break;
			}
		}

		if (conflicts)
			continue;

		/* passed all tests, so this item can run */
		FUNC2(ready_list, i);
		return te;
	}

	FUNC1("no item ready");
	return NULL;
}