#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int num_workers; } ;
struct TYPE_8__ {int /*<<< orphan*/  plan; } ;
struct TYPE_10__ {int nreaders; int need_to_scan_locally; int gm_initialized; int /*<<< orphan*/  gm_heap; int /*<<< orphan*/ ** gm_slots; TYPE_2__* gm_tuple_buffers; TYPE_1__ ps; } ;
struct TYPE_9__ {int done; scalar_t__ readCounter; scalar_t__ nTuples; } ;
typedef  TYPE_3__ GatherMergeState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GatherMerge ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC11(GatherMergeState *gm_state)
{
	int			nreaders = gm_state->nreaders;
	bool		nowait = true;
	int			i;

	/* Assert that gather_merge_setup made enough space */
	FUNC0(nreaders <= FUNC8(GatherMerge, gm_state->ps.plan)->num_workers);

	/* Reset leader's tuple slot to empty */
	gm_state->gm_slots[0] = NULL;

	/* Reset the tuple slot and tuple array for each worker */
	for (i = 0; i < nreaders; i++)
	{
		/* Reset tuple array to empty */
		gm_state->gm_tuple_buffers[i].nTuples = 0;
		gm_state->gm_tuple_buffers[i].readCounter = 0;
		/* Reset done flag to not-done */
		gm_state->gm_tuple_buffers[i].done = false;
		/* Ensure output slot is empty */
		FUNC2(gm_state->gm_slots[i + 1]);
	}

	/* Reset binary heap to empty */
	FUNC7(gm_state->gm_heap);

	/*
	 * First, try to read a tuple from each worker (including leader) in
	 * nowait mode.  After this, if not all workers were able to produce a
	 * tuple (or a "done" indication), then re-read from remaining workers,
	 * this time using wait mode.  Add all live readers (those producing at
	 * least one tuple) to the heap.
	 */
reread:
	for (i = 0; i <= nreaders; i++)
	{
		FUNC1();

		/* skip this source if already known done */
		if ((i == 0) ? gm_state->need_to_scan_locally :
			!gm_state->gm_tuple_buffers[i - 1].done)
		{
			if (FUNC4(gm_state->gm_slots[i]))
			{
				/* Don't have a tuple yet, try to get one */
				if (FUNC9(gm_state, i, nowait))
					FUNC5(gm_state->gm_heap,
											 FUNC3(i));
			}
			else
			{
				/*
				 * We already got at least one tuple from this worker, but
				 * might as well see if it has any more ready by now.
				 */
				FUNC10(gm_state, i);
			}
		}
	}

	/* need not recheck leader, since nowait doesn't matter for it */
	for (i = 1; i <= nreaders; i++)
	{
		if (!gm_state->gm_tuple_buffers[i - 1].done &&
			FUNC4(gm_state->gm_slots[i]))
		{
			nowait = false;
			goto reread;
		}
	}

	/* Now heapify the heap. */
	FUNC6(gm_state->gm_heap);

	gm_state->gm_initialized = true;
}