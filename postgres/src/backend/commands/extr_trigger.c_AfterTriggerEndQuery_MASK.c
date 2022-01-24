#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * head; int /*<<< orphan*/ * tail; } ;
struct TYPE_8__ {size_t query_depth; size_t maxquerydepth; TYPE_1__* query_stack; int /*<<< orphan*/  firing_counter; int /*<<< orphan*/  events; } ;
struct TYPE_7__ {TYPE_3__ events; } ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  CommandId ;
typedef  TYPE_1__ AfterTriggersQueryData ;
typedef  int /*<<< orphan*/  AfterTriggerEventChunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__ afterTriggers ; 

void
FUNC5(EState *estate)
{
	AfterTriggersQueryData *qs;

	/* Must be inside a query, too */
	FUNC1(afterTriggers.query_depth >= 0);

	/*
	 * If we never even got as far as initializing the event stack, there
	 * certainly won't be any events, so exit quickly.
	 */
	if (afterTriggers.query_depth >= afterTriggers.maxquerydepth)
	{
		afterTriggers.query_depth--;
		return;
	}

	/*
	 * Process all immediate-mode triggers queued by the query, and move the
	 * deferred ones to the main list of deferred events.
	 *
	 * Notice that we decide which ones will be fired, and put the deferred
	 * ones on the main list, before anything is actually fired.  This ensures
	 * reasonably sane behavior if a trigger function does SET CONSTRAINTS ...
	 * IMMEDIATE: all events we have decided to defer will be available for it
	 * to fire.
	 *
	 * We loop in case a trigger queues more events at the same query level.
	 * Ordinary trigger functions, including all PL/pgSQL trigger functions,
	 * will instead fire any triggers in a dedicated query level.  Foreign key
	 * enforcement triggers do add to the current query level, thanks to their
	 * passing fire_triggers = false to SPI_execute_snapshot().  Other
	 * C-language triggers might do likewise.
	 *
	 * If we find no firable events, we don't have to increment
	 * firing_counter.
	 */
	qs = &afterTriggers.query_stack[afterTriggers.query_depth];

	for (;;)
	{
		if (FUNC4(&qs->events, &afterTriggers.events, true))
		{
			CommandId	firing_id = afterTriggers.firing_counter++;
			AfterTriggerEventChunk *oldtail = qs->events.tail;

			if (FUNC3(&qs->events, firing_id, estate, false))
				break;			/* all fired */

			/*
			 * Firing a trigger could result in query_stack being repalloc'd,
			 * so we must recalculate qs after each afterTriggerInvokeEvents
			 * call.  Furthermore, it's unsafe to pass delete_ok = true here,
			 * because that could cause afterTriggerInvokeEvents to try to
			 * access qs->events after the stack has been repalloc'd.
			 */
			qs = &afterTriggers.query_stack[afterTriggers.query_depth];

			/*
			 * We'll need to scan the events list again.  To reduce the cost
			 * of doing so, get rid of completely-fired chunks.  We know that
			 * all events were marked IN_PROGRESS or DONE at the conclusion of
			 * afterTriggerMarkEvents, so any still-interesting events must
			 * have been added after that, and so must be in the chunk that
			 * was then the tail chunk, or in later chunks.  So, zap all
			 * chunks before oldtail.  This is approximately the same set of
			 * events we would have gotten rid of by passing delete_ok = true.
			 */
			FUNC1(oldtail != NULL);
			while (qs->events.head != oldtail)
				FUNC2(qs);
		}
		else
			break;
	}

	/* Release query-level-local storage, including tuplestores if any */
	FUNC0(&afterTriggers.query_stack[afterTriggers.query_depth]);

	afterTriggers.query_depth--;
}