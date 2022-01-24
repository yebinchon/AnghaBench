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
typedef  TYPE_1__* pthread_rwlock_t ;
struct TYPE_5__ {scalar_t__ nMagic; scalar_t__ nExclusiveAccessCount; int /*<<< orphan*/  nSharedAccessCount; int /*<<< orphan*/  mtxSharedAccessCompleted; int /*<<< orphan*/  cndSharedAccessCompleted; int /*<<< orphan*/  nCompletedSharedAccessCount; int /*<<< orphan*/  mtxExclusiveAccess; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 TYPE_1__* PTHREAD_RWLOCK_INITIALIZER ; 
 scalar_t__ PTW32_RWLOCK_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ptw32_rwlock_cancelwrwait ; 
 int FUNC5 (TYPE_1__**) ; 

int
FUNC6 (pthread_rwlock_t * rwlock)
{
  int result;
  pthread_rwlock_t rwl;

  if (rwlock == NULL || *rwlock == NULL)
    {
      return EINVAL;
    }

  /*
   * We do a quick check to see if we need to do more work
   * to initialise a static rwlock. We check
   * again inside the guarded section of ptw32_rwlock_check_need_init()
   * to avoid race conditions.
   */
  if (*rwlock == PTHREAD_RWLOCK_INITIALIZER)
    {
      result = FUNC5 (rwlock);

      if (result != 0 && result != EBUSY)
	{
	  return result;
	}
    }

  rwl = *rwlock;

  if (rwl->nMagic != PTW32_RWLOCK_MAGIC)
    {
      return EINVAL;
    }

  if ((result = FUNC3 (&(rwl->mtxExclusiveAccess))) != 0)
    {
      return result;
    }

  if ((result = FUNC3 (&(rwl->mtxSharedAccessCompleted))) != 0)
    {
      (void) FUNC4 (&(rwl->mtxExclusiveAccess));
      return result;
    }

  if (rwl->nExclusiveAccessCount == 0)
    {
      if (rwl->nCompletedSharedAccessCount > 0)
	{
	  rwl->nSharedAccessCount -= rwl->nCompletedSharedAccessCount;
	  rwl->nCompletedSharedAccessCount = 0;
	}

      if (rwl->nSharedAccessCount > 0)
	{
	  rwl->nCompletedSharedAccessCount = -rwl->nSharedAccessCount;

	  /*
	   * This routine may be a cancelation point
	   * according to POSIX 1003.1j section 18.1.2.
	   */
#if defined(_MSC_VER) && _MSC_VER < 1400
#pragma inline_depth(0)
#endif
	  FUNC1 (ptw32_rwlock_cancelwrwait, (void *) rwl);

	  do
	    {
	      result = FUNC2 (&(rwl->cndSharedAccessCompleted),
					  &(rwl->mtxSharedAccessCompleted));
	    }
	  while (result == 0 && rwl->nCompletedSharedAccessCount < 0);

	  FUNC0 ((result != 0) ? 1 : 0);
#if defined(_MSC_VER) && _MSC_VER < 1400
#pragma inline_depth()
#endif

	  if (result == 0)
	    {
	      rwl->nSharedAccessCount = 0;
	    }
	}
    }

  if (result == 0)
    {
      rwl->nExclusiveAccessCount++;
    }

  return result;
}