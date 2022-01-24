#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int TickType_t ;
struct TYPE_2__ {int /*<<< orphan*/  xEventListItem; } ;
typedef  int /*<<< orphan*/  List_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  pdTRUE ; 
 int /*<<< orphan*/  FUNC2 (int const,int /*<<< orphan*/ ) ; 
 TYPE_1__* pxCurrentTCB ; 
 int const taskEVENT_LIST_ITEM_VALUE_IN_USE ; 
 scalar_t__ uxSchedulerSuspended ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait )
{
	FUNC0( *pxEventList );

	/* THIS FUNCTION MUST BE CALLED WITH THE SCHEDULER SUSPENDED.  It is used by
	the event groups implementation. */
	FUNC0( uxSchedulerSuspended != 0 );

	/* Store the item value in the event list item.  It is safe to access the
	event list item here as interrupts won't access the event list item of a
	task that is not in the Blocked state. */
	FUNC1( &( pxCurrentTCB->xEventListItem ), xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );

	/* Place the event list item of the TCB at the end of the appropriate event
	list.  It is safe to access the event list here because it is part of an
	event group implementation - and interrupts don't access event groups
	directly (instead they access them indirectly by pending function calls to
	the task level). */
	FUNC3( pxEventList, &( pxCurrentTCB->xEventListItem ) );

	FUNC2( xTicksToWait, pdTRUE );
}