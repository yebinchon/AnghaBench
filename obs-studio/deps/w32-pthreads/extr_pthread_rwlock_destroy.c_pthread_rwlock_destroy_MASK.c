#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptw32_mcs_local_node_t ;
typedef  TYPE_1__* pthread_rwlock_t ;
struct TYPE_5__ {scalar_t__ nMagic; scalar_t__ nExclusiveAccessCount; scalar_t__ nSharedAccessCount; scalar_t__ nCompletedSharedAccessCount; int /*<<< orphan*/  mtxExclusiveAccess; int /*<<< orphan*/  mtxSharedAccessCompleted; int /*<<< orphan*/  cndSharedAccessCompleted; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 TYPE_1__* PTHREAD_RWLOCK_INITIALIZER ; 
 scalar_t__ PTW32_RWLOCK_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ptw32_rwlock_test_init_lock ; 

int
FUNC7 (pthread_rwlock_t * rwlock)
{
  pthread_rwlock_t rwl;
  int result = 0, result1 = 0, result2 = 0;

  if (rwlock == NULL || *rwlock == NULL)
    {
      return EINVAL;
    }

  if (*rwlock != PTHREAD_RWLOCK_INITIALIZER)
    {
      rwl = *rwlock;

      if (rwl->nMagic != PTW32_RWLOCK_MAGIC)
	{
	  return EINVAL;
	}

      if ((result = FUNC3 (&(rwl->mtxExclusiveAccess))) != 0)
	{
	  return result;
	}

      if ((result =
	   FUNC3 (&(rwl->mtxSharedAccessCompleted))) != 0)
	{
	  (void) FUNC4 (&(rwl->mtxExclusiveAccess));
	  return result;
	}

      /*
       * Check whether any threads own/wait for the lock (wait for ex.access);
       * report "BUSY" if so.
       */
      if (rwl->nExclusiveAccessCount > 0
	  || rwl->nSharedAccessCount > rwl->nCompletedSharedAccessCount)
	{
	  result = FUNC4 (&(rwl->mtxSharedAccessCompleted));
	  result1 = FUNC4 (&(rwl->mtxExclusiveAccess));
	  result2 = EBUSY;
	}
      else
	{
	  rwl->nMagic = 0;

	  if ((result =
	       FUNC4 (&(rwl->mtxSharedAccessCompleted))) != 0)
	    {
	      FUNC4 (&rwl->mtxExclusiveAccess);
	      return result;
	    }

	  if ((result =
	       FUNC4 (&(rwl->mtxExclusiveAccess))) != 0)
	    {
	      return result;
	    }

	  *rwlock = NULL;	/* Invalidate rwlock before anything else */
	  result = FUNC1 (&(rwl->cndSharedAccessCompleted));
	  result1 = FUNC2 (&(rwl->mtxSharedAccessCompleted));
	  result2 = FUNC2 (&(rwl->mtxExclusiveAccess));
	  (void) FUNC0 (rwl);
	}
    }
  else
    {
      ptw32_mcs_local_node_t node;
      /*
       * See notes in ptw32_rwlock_check_need_init() above also.
       */
      FUNC5(&ptw32_rwlock_test_init_lock, &node);

      /*
       * Check again.
       */
      if (*rwlock == PTHREAD_RWLOCK_INITIALIZER)
	{
	  /*
	   * This is all we need to do to destroy a statically
	   * initialised rwlock that has not yet been used (initialised).
	   * If we get to here, another thread
	   * waiting to initialise this rwlock will get an EINVAL.
	   */
	  *rwlock = NULL;
	}
      else
	{
	  /*
	   * The rwlock has been initialised while we were waiting
	   * so assume it's in use.
	   */
	  result = EBUSY;
	}

      FUNC6(&node);
    }

  return ((result != 0) ? result : ((result1 != 0) ? result1 : result2));
}