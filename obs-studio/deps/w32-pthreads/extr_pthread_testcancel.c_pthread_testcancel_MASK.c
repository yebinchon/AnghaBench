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
struct TYPE_4__ {scalar_t__ state; scalar_t__ cancelState; int /*<<< orphan*/  cancelEvent; int /*<<< orphan*/  stateLock; } ;
typedef  TYPE_1__ ptw32_thread_t ;
typedef  int /*<<< orphan*/  ptw32_mcs_local_node_t ;
struct TYPE_5__ {scalar_t__ p; } ;
typedef  TYPE_2__ pthread_t ;

/* Variables and functions */
 scalar_t__ PTHREAD_CANCEL_DISABLE ; 
 int /*<<< orphan*/  PTW32_EPS_CANCEL ; 
 scalar_t__ PThreadStateCancelPending ; 
 scalar_t__ PThreadStateCanceling ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5 (void)
     /*
      * ------------------------------------------------------
      * DOCPUBLIC
      *      This function creates a deferred cancellation point
      *      in the calling thread. The call has no effect if the
      *      current cancelability state is
      *              PTHREAD_CANCEL_DISABLE
      *
      * PARAMETERS
      *      N/A
      *
      *
      * DESCRIPTION
      *      This function creates a deferred cancellation point
      *      in the calling thread. The call has no effect if the
      *      current cancelability state is
      *              PTHREAD_CANCEL_DISABLE
      *
      *      NOTES:
      *      1)      Cancellation is asynchronous. Use pthread_join
      *              to wait for termination of thread if necessary
      *
      * RESULTS
      *              N/A
      *
      * ------------------------------------------------------
      */
{
  ptw32_mcs_local_node_t stateLock;
  pthread_t self = FUNC1 ();
  ptw32_thread_t * sp = (ptw32_thread_t *) self.p;

  if (sp == NULL)
    {
      return;
    }

  /*
   * Pthread_cancel() will have set sp->state to PThreadStateCancelPending
   * and set an event, so no need to enter kernel space if
   * sp->state != PThreadStateCancelPending - that only slows us down.
   */
  if (sp->state != PThreadStateCancelPending)
    {
      return;
    }

  FUNC2 (&sp->stateLock, &stateLock);

  if (sp->cancelState != PTHREAD_CANCEL_DISABLE)
    {
      FUNC0(sp->cancelEvent);
      sp->state = PThreadStateCanceling;
      sp->cancelState = PTHREAD_CANCEL_DISABLE;
      FUNC3 (&stateLock);
      FUNC4 (PTW32_EPS_CANCEL);
      /* Never returns here */
    }

  FUNC3 (&stateLock);
}