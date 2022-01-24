#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptw32_mcs_local_node_t ;
typedef  TYPE_1__* pthread_condattr_t ;
typedef  TYPE_2__* pthread_cond_t ;
struct TYPE_9__ {struct TYPE_9__* next; struct TYPE_9__* prev; int /*<<< orphan*/  semBlockLock; int /*<<< orphan*/  semBlockQueue; int /*<<< orphan*/  mtxUnblockLock; scalar_t__ nWaitersGone; scalar_t__ nWaitersToUnblock; scalar_t__ nWaitersBlocked; } ;
struct TYPE_8__ {scalar_t__ pshared; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSYS ; 
 scalar_t__ PTHREAD_PROCESS_SHARED ; 
 scalar_t__ FUNC0 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* ptw32_cond_list_head ; 
 int /*<<< orphan*/  ptw32_cond_list_lock ; 
 TYPE_2__* ptw32_cond_list_tail ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC7 (pthread_cond_t * cond, const pthread_condattr_t * attr)
     /*
      * ------------------------------------------------------
      * DOCPUBLIC
      *      This function initializes a condition variable.
      *
      * PARAMETERS
      *      cond
      *              pointer to an instance of pthread_cond_t
      *
      *      attr
      *              specifies optional creation attributes.
      *
      *
      * DESCRIPTION
      *      This function initializes a condition variable.
      *
      * RESULTS
      *              0               successfully created condition variable,
      *              EINVAL          'attr' is invalid,
      *              EAGAIN          insufficient resources (other than
      *                              memory,
      *              ENOMEM          insufficient memory,
      *              EBUSY           'cond' is already initialized,
      *
      * ------------------------------------------------------
      */
{
  int result;
  pthread_cond_t cv = NULL;

  if (cond == NULL)
    {
      return EINVAL;
    }

  if ((attr != NULL && *attr != NULL) &&
      ((*attr)->pshared == PTHREAD_PROCESS_SHARED))
    {
      /*
       * Creating condition variable that can be shared between
       * processes.
       */
      result = ENOSYS;
      goto DONE;
    }

  cv = (pthread_cond_t) FUNC0 (1, sizeof (*cv));

  if (cv == NULL)
    {
      result = ENOMEM;
      goto DONE;
    }

  cv->nWaitersBlocked = 0;
  cv->nWaitersToUnblock = 0;
  cv->nWaitersGone = 0;

  if (FUNC6 (&(cv->semBlockLock), 0, 1) != 0)
    {
      result = errno;
      goto FAIL0;
    }

  if (FUNC6 (&(cv->semBlockQueue), 0, 0) != 0)
    {
      result = errno;
      goto FAIL1;
    }

  if ((result = FUNC2 (&(cv->mtxUnblockLock), 0)) != 0)
    {
      goto FAIL2;
    }

  result = 0;

  goto DONE;

  /*
   * -------------
   * Failed...
   * -------------
   */
FAIL2:
  (void) FUNC5 (&(cv->semBlockQueue));

FAIL1:
  (void) FUNC5 (&(cv->semBlockLock));

FAIL0:
  (void) FUNC1 (cv);
  cv = NULL;

DONE:
  if (0 == result)
    {
      ptw32_mcs_local_node_t node;

      FUNC3(&ptw32_cond_list_lock, &node);

      cv->next = NULL;
      cv->prev = ptw32_cond_list_tail;

      if (ptw32_cond_list_tail != NULL)
	{
	  ptw32_cond_list_tail->next = cv;
	}

      ptw32_cond_list_tail = cv;

      if (ptw32_cond_list_head == NULL)
	{
	  ptw32_cond_list_head = cv;
	}

      FUNC4(&node);
    }

  *cond = cv;

  return result;

}