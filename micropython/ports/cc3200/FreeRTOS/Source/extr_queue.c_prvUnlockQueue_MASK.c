#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int8_t ;
struct TYPE_4__ {scalar_t__ cTxLock; scalar_t__ cRxLock; int /*<<< orphan*/  xTasksWaitingToSend; int /*<<< orphan*/  xTasksWaitingToReceive; int /*<<< orphan*/ * pxQueueSetContainer; } ;
typedef  TYPE_1__ Queue_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ pdFALSE ; 
 scalar_t__ FUNC2 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 scalar_t__ queueLOCKED_UNMODIFIED ; 
 int /*<<< orphan*/  queueSEND_TO_BACK ; 
 void* queueUNLOCKED ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7( Queue_t * const pxQueue )
{
	/* THIS FUNCTION MUST BE CALLED WITH THE SCHEDULER SUSPENDED. */

	/* The lock counts contains the number of extra data items placed or
	removed from the queue while the queue was locked.  When a queue is
	locked items can be added or removed, but the event lists cannot be
	updated. */
	FUNC3();
	{
		int8_t cTxLock = pxQueue->cTxLock;

		/* See if data was added to the queue while it was locked. */
		while( cTxLock > queueLOCKED_UNMODIFIED )
		{
			/* Data was posted while the queue was locked.  Are any tasks
			blocked waiting for data to become available? */
			#if ( configUSE_QUEUE_SETS == 1 )
			{
				if( pxQueue->pxQueueSetContainer != NULL )
				{
					if( prvNotifyQueueSetContainer( pxQueue, queueSEND_TO_BACK ) != pdFALSE )
					{
						/* The queue is a member of a queue set, and posting to
						the queue set caused a higher priority task to unblock.
						A context switch is required. */
						vTaskMissedYield();
					}
					else
					{
						mtCOVERAGE_TEST_MARKER();
					}
				}
				else
				{
					/* Tasks that are removed from the event list will get
					added to the pending ready list as the scheduler is still
					suspended. */
					if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
					{
						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
						{
							/* The task waiting has a higher priority so record that a
							context	switch is required. */
							vTaskMissedYield();
						}
						else
						{
							mtCOVERAGE_TEST_MARKER();
						}
					}
					else
					{
						break;
					}
				}
			}
			#else /* configUSE_QUEUE_SETS */
			{
				/* Tasks that are removed from the event list will get added to
				the pending ready list as the scheduler is still suspended. */
				if( FUNC0( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
				{
					if( FUNC6( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
					{
						/* The task waiting has a higher priority so record that
						a context switch is required. */
						FUNC5();
					}
					else
					{
						FUNC1();
					}
				}
				else
				{
					break;
				}
			}
			#endif /* configUSE_QUEUE_SETS */

			--cTxLock;
		}

		pxQueue->cTxLock = queueUNLOCKED;
	}
	FUNC4();

	/* Do the same for the Rx lock. */
	FUNC3();
	{
		int8_t cRxLock = pxQueue->cRxLock;

		while( cRxLock > queueLOCKED_UNMODIFIED )
		{
			if( FUNC0( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
			{
				if( FUNC6( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
				{
					FUNC5();
				}
				else
				{
					FUNC1();
				}

				--cRxLock;
			}
			else
			{
				break;
			}
		}

		pxQueue->cRxLock = queueUNLOCKED;
	}
	FUNC4();
}