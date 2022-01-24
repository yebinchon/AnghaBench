#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ detachState; int /*<<< orphan*/  ptHandle; TYPE_1__* robustMxList; int /*<<< orphan*/  state; int /*<<< orphan*/  stateLock; } ;
typedef  TYPE_3__ ptw32_thread_t ;
typedef  int /*<<< orphan*/  ptw32_mcs_local_node_t ;
typedef  TYPE_4__* pthread_mutex_t ;
struct TYPE_13__ {int /*<<< orphan*/  key; } ;
struct TYPE_12__ {int /*<<< orphan*/  event; TYPE_2__* robustNode; } ;
struct TYPE_10__ {int /*<<< orphan*/  stateInconsistent; } ;
struct TYPE_9__ {TYPE_4__* mx; } ;
typedef  int /*<<< orphan*/  PTW32_INTERLOCKED_LONGPTR ;
typedef  int /*<<< orphan*/  PTW32_INTERLOCKED_LONG ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PThreadStateLast ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ ptw32_processInitialized ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__**,TYPE_3__*) ; 
 TYPE_5__* ptw32_selfThreadKey ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

BOOL
FUNC9 ()
{
  if (ptw32_processInitialized)
    {
      /*
       * Don't use pthread_self() - to avoid creating an implicit POSIX thread handle
       * unnecessarily.
       */
      ptw32_thread_t * sp = (ptw32_thread_t *) FUNC3 (ptw32_selfThreadKey);

      if (sp != NULL) // otherwise Win32 thread with no implicit POSIX handle.
	{
          ptw32_mcs_local_node_t stateLock;
	  FUNC4 (sp->ptHandle);

	  FUNC5 (&sp->stateLock, &stateLock);
	  sp->state = PThreadStateLast;
	  /*
	   * If the thread is joinable at this point then it MUST be joined
	   * or detached explicitly by the application.
	   */
	  FUNC6 (&stateLock);

          /*
           * Robust Mutexes
           */
          while (sp->robustMxList != NULL)
            {
              pthread_mutex_t mx = sp->robustMxList->mx;
              FUNC7(&mx, sp);
              (void) FUNC0(
                       (PTW32_INTERLOCKED_LONGPTR)&mx->robustNode->stateInconsistent,
                       (PTW32_INTERLOCKED_LONG)-1);
              /*
               * If there are no waiters then the next thread to block will
               * sleep, wakeup immediately and then go back to sleep.
               * See pthread_mutex_lock.c.
               */
              FUNC1(mx->event);
            }


	  if (sp->detachState == PTHREAD_CREATE_DETACHED)
	    {
	      FUNC8 (sp->ptHandle);

	      FUNC2 (ptw32_selfThreadKey->key, NULL);
	    }
	}
    }

  return TRUE;
}