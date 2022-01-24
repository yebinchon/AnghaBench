#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UBaseType_t ;
struct TYPE_7__ {scalar_t__ uxPriority; scalar_t__ uxTCBNumber; } ;
typedef  TYPE_1__ TCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ pdFALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* pxCurrentTCB ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ uxCurrentNumberOfTasks ; 
 scalar_t__ uxTaskNumber ; 
 scalar_t__ xSchedulerRunning ; 

__attribute__((used)) static void FUNC8( TCB_t *pxNewTCB )
{
	/* Ensure interrupts don't access the task lists while the lists are being
	updated. */
	FUNC4();
	{
		uxCurrentNumberOfTasks++;
		if( pxCurrentTCB == NULL )
		{
			/* There are no other tasks, or all the other tasks are in
			the suspended state - make this the current task. */
			pxCurrentTCB = pxNewTCB;

			if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
			{
				/* This is the first task to be created so do the preliminary
				initialisation required.  We will not recover if this call
				fails, but we will report the failure. */
				FUNC3();
			}
			else
			{
				FUNC0();
			}
		}
		else
		{
			/* If the scheduler is not already running, make this task the
			current task if it is the highest priority task to be created
			so far. */
			if( xSchedulerRunning == pdFALSE )
			{
				if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
				{
					pxCurrentTCB = pxNewTCB;
				}
				else
				{
					FUNC0();
				}
			}
			else
			{
				FUNC0();
			}
		}

		uxTaskNumber++;

		#if ( configUSE_TRACE_FACILITY == 1 )
		{
			/* Add a counter into the TCB for tracing only. */
			pxNewTCB->uxTCBNumber = uxTaskNumber;
		}
		#endif /* configUSE_TRACE_FACILITY */
		FUNC7( pxNewTCB );

		FUNC2( pxNewTCB );

		FUNC1( pxNewTCB );
	}
	FUNC5();

	if( xSchedulerRunning != pdFALSE )
	{
		/* If the created task is of a higher priority than the current task
		then it should run now. */
		if( pxCurrentTCB->uxPriority < pxNewTCB->uxPriority )
		{
			FUNC6();
		}
		else
		{
			FUNC0();
		}
	}
	else
	{
		FUNC0();
	}
}