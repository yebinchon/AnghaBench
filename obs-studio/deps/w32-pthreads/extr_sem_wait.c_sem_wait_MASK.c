#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sem_t ;
struct TYPE_3__ {int value; scalar_t__ leftToUnblock; int /*<<< orphan*/  lock; int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 void* EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ptw32_sem_wait_cleanup ; 

int
FUNC7 (sem_t * sem)
     /*
      * ------------------------------------------------------
      * DOCPUBLIC
      *      This function  waits on a semaphore.
      *
      * PARAMETERS
      *      sem
      *              pointer to an instance of sem_t
      *
      * DESCRIPTION
      *      This function waits on a semaphore. If the
      *      semaphore value is greater than zero, it decreases
      *      its value by one. If the semaphore value is zero, then
      *      the calling thread (or process) is blocked until it can
      *      successfully decrease the value or until interrupted by
      *      a signal.
      *
      * RESULTS
      *              0               successfully decreased semaphore,
      *              -1              failed, error in errno
      * ERRNO
      *              EINVAL          'sem' is not a valid semaphore,
      *              ENOSYS          semaphores are not supported,
      *              EINTR           the function was interrupted by a signal,
      *              EDEADLK         a deadlock condition was detected.
      *
      * ------------------------------------------------------
      */
{
  int result = 0;
  sem_t s = *sem;

  FUNC6();

  if (s == NULL)
    {
      result = EINVAL;
    }
  else
    {
      if ((result = FUNC4 (&s->lock)) == 0)
	{
	  int v;

	  /* See sem_destroy.c
	   */
	  if (*sem == NULL)
	    {
	      (void) FUNC5 (&s->lock);
	      errno = EINVAL;
	      return -1;
	    }

          v = --s->value;
	  (void) FUNC5 (&s->lock);

	  if (v < 0)
	    {
#if defined(_MSC_VER) && _MSC_VER < 1400
#pragma inline_depth(0)
#endif
	      /* Must wait */
	      FUNC3(ptw32_sem_wait_cleanup, (void *) s);
	      result = FUNC1 (s->sem);
	      /* Cleanup if we're canceled or on any other error */
	      FUNC2(result);
#if defined(_MSC_VER) && _MSC_VER < 1400
#pragma inline_depth()
#endif
	    }
#if defined(NEED_SEM)

	  if (!result && pthread_mutex_lock (&s->lock) == 0)
	    {
	      if (*sem == NULL)
	        {
	          (void) pthread_mutex_unlock (&s->lock);
	          errno = EINVAL;
	          return -1;
	        }

	      if (s->leftToUnblock > 0)
		{
		  --s->leftToUnblock;
		  SetEvent(s->sem);
		}
	      (void) pthread_mutex_unlock (&s->lock);
	    }

#endif /* NEED_SEM */

	}

    }

  if (result != 0)
    {
      errno = result;
      return -1;
    }

  return 0;

}