#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ UBaseType_t ;
struct TYPE_6__ {int /*<<< orphan*/ * pxNext; } ;
struct TYPE_7__ {TYPE_1__ xListEnd; } ;
struct TYPE_8__ {scalar_t__ ucStaticallyAllocated; TYPE_2__ xTasksWaitingForBits; } ;
typedef  TYPE_2__ List_t ;
typedef  int /*<<< orphan*/  ListItem_t ;
typedef  TYPE_3__ EventGroup_t ;
typedef  scalar_t__ EventGroupHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  eventUNBLOCKED_DUE_TO_BIT_SET ; 
 scalar_t__ FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ pdFALSE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8( EventGroupHandle_t xEventGroup )
{
EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
const List_t *pxTasksWaitingForBits = &( pxEventBits->xTasksWaitingForBits );

	FUNC5();
	{
		FUNC3( xEventGroup );

		while( FUNC1( pxTasksWaitingForBits ) > ( UBaseType_t ) 0 )
		{
			/* Unblock the task, returning 0 as the event list is being deleted
			and	cannot therefore have any bits set. */
			FUNC0( pxTasksWaitingForBits->xListEnd.pxNext != ( ListItem_t * ) &( pxTasksWaitingForBits->xListEnd ) );
			( void ) FUNC6( pxTasksWaitingForBits->xListEnd.pxNext, eventUNBLOCKED_DUE_TO_BIT_SET );
		}

		#if( ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 0 ) )
		{
			/* The event group can only have been allocated dynamically - free
			it again. */
			vPortFree( pxEventBits );
		}
		#elif( ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 1 ) )
		{
			/* The event group could have been allocated statically or
			dynamically, so check before attempting to free the memory. */
			if( pxEventBits->ucStaticallyAllocated == ( uint8_t ) pdFALSE )
			{
				vPortFree( pxEventBits );
			}
			else
			{
				mtCOVERAGE_TEST_MARKER();
			}
		}
		#endif /* configSUPPORT_DYNAMIC_ALLOCATION */
	}
	( void ) FUNC7();
}