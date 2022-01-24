#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Tuplesortstate ;
struct TYPE_13__ {long spaceUsed; int /*<<< orphan*/  spaceType; int /*<<< orphan*/  sortMethod; } ;
typedef  TYPE_2__ TuplesortInstrumentation ;
struct TYPE_15__ {scalar_t__ format; int indent; int /*<<< orphan*/  str; int /*<<< orphan*/  analyze; } ;
struct TYPE_14__ {TYPE_1__* shared_info; int /*<<< orphan*/ * tuplesortstate; scalar_t__ sort_Done; } ;
struct TYPE_12__ {int num_workers; TYPE_2__* sinstrument; } ;
typedef  TYPE_3__ SortState ;
typedef  TYPE_4__ ExplainState ;

/* Variables and functions */
 scalar_t__ EXPLAIN_FORMAT_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,long,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,TYPE_4__*) ; 
 int /*<<< orphan*/  SORT_TYPE_STILL_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(SortState *sortstate, ExplainState *es)
{
	if (!es->analyze)
		return;

	if (sortstate->sort_Done && sortstate->tuplesortstate != NULL)
	{
		Tuplesortstate *state = (Tuplesortstate *) sortstate->tuplesortstate;
		TuplesortInstrumentation stats;
		const char *sortMethod;
		const char *spaceType;
		long		spaceUsed;

		FUNC6(state, &stats);
		sortMethod = FUNC7(stats.sortMethod);
		spaceType = FUNC8(stats.spaceType);
		spaceUsed = stats.spaceUsed;

		if (es->format == EXPLAIN_FORMAT_TEXT)
		{
			FUNC5(es->str, es->indent * 2);
			FUNC4(es->str, "Sort Method: %s  %s: %ldkB\n",
							 sortMethod, spaceType, spaceUsed);
		}
		else
		{
			FUNC3("Sort Method", sortMethod, es);
			FUNC2("Sort Space Used", "kB", spaceUsed, es);
			FUNC3("Sort Space Type", spaceType, es);
		}
	}

	if (sortstate->shared_info != NULL)
	{
		int			n;
		bool		opened_group = false;

		for (n = 0; n < sortstate->shared_info->num_workers; n++)
		{
			TuplesortInstrumentation *sinstrument;
			const char *sortMethod;
			const char *spaceType;
			long		spaceUsed;

			sinstrument = &sortstate->shared_info->sinstrument[n];
			if (sinstrument->sortMethod == SORT_TYPE_STILL_IN_PROGRESS)
				continue;		/* ignore any unfilled slots */
			sortMethod = FUNC7(sinstrument->sortMethod);
			spaceType = FUNC8(sinstrument->spaceType);
			spaceUsed = sinstrument->spaceUsed;

			if (es->format == EXPLAIN_FORMAT_TEXT)
			{
				FUNC5(es->str, es->indent * 2);
				FUNC4(es->str,
								 "Worker %d:  Sort Method: %s  %s: %ldkB\n",
								 n, sortMethod, spaceType, spaceUsed);
			}
			else
			{
				if (!opened_group)
				{
					FUNC1("Workers", "Workers", false, es);
					opened_group = true;
				}
				FUNC1("Worker", NULL, true, es);
				FUNC2("Worker Number", NULL, n, es);
				FUNC3("Sort Method", sortMethod, es);
				FUNC2("Sort Space Used", "kB", spaceUsed, es);
				FUNC3("Sort Space Type", spaceType, es);
				FUNC0("Worker", NULL, true, es);
			}
		}
		if (opened_group)
			FUNC0("Workers", "Workers", false, es);
	}
}