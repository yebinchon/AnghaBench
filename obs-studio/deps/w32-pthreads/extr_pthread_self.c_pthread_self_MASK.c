#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ p; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_6__ {int implicit; int /*<<< orphan*/  threadH; int /*<<< orphan*/  sched_priority; int /*<<< orphan*/  thread; int /*<<< orphan*/  detachState; TYPE_2__ ptHandle; } ;
typedef  TYPE_1__ ptw32_thread_t ;
typedef  TYPE_2__ pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLICATE_SAME_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 
 TYPE_2__ FUNC7 () ; 
 int /*<<< orphan*/  ptw32_selfThreadKey ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__) ; 

pthread_t
FUNC9 (void)
     /*
      * ------------------------------------------------------
      * DOCPUBLIC
      *      This function returns a reference to the current running
      *      thread.
      *
      * PARAMETERS
      *      N/A
      *
      *
      * DESCRIPTION
      *      This function returns a reference to the current running
      *      thread.
      *
      * RESULTS
      *              pthread_t       reference to the current thread
      *
      * ------------------------------------------------------
      */
{
  pthread_t self;
  pthread_t nil = {NULL, 0};
  ptw32_thread_t * sp;

#if defined(_UWIN)
  if (!ptw32_selfThreadKey)
    return nil;
#endif

  sp = (ptw32_thread_t *) FUNC5 (ptw32_selfThreadKey);

  if (sp != NULL)
    {
      self = sp->ptHandle;
    }
  else
    {
      /*
       * Need to create an implicit 'self' for the currently
       * executing thread.
       */
      self = FUNC7 ();
      sp = (ptw32_thread_t *) self.p;

      if (sp != NULL)
	{
	  /*
	   * This is a non-POSIX thread which has chosen to call
	   * a POSIX threads function for some reason. We assume that
	   * it isn't joinable, but we do assume that it's
	   * (deferred) cancelable.
	   */
	  sp->implicit = 1;
	  sp->detachState = PTHREAD_CREATE_DETACHED;
	  sp->thread = FUNC3 ();

#if defined(NEED_DUPLICATEHANDLE)
	  /*
	   * DuplicateHandle does not exist on WinCE.
	   *
	   * NOTE:
	   * GetCurrentThread only returns a pseudo-handle
	   * which is only valid in the current thread context.
	   * Therefore, you should not pass the handle to
	   * other threads for whatever purpose.
	   */
	  sp->threadH = GetCurrentThread ();
#else
	  if (!FUNC0 (FUNC1 (),
				FUNC2 (),
				FUNC1 (),
				&sp->threadH,
				0, FALSE, DUPLICATE_SAME_ACCESS))
	    {
	      /*
	       * Should not do this, but we have no alternative if
	       * we can't get a Win32 thread handle.
	       * Thread structs are never freed.
	       */
	      FUNC8 (self);
	      /*
	       * As this is a win32 thread calling us and we have failed,
	       * return a value that makes sense to win32.
	       */
	      return nil;
	    }
#endif

	  /*
	   * No need to explicitly serialise access to sched_priority
	   * because the new handle is not yet public.
	   */
	  sp->sched_priority = FUNC4 (sp->threadH);
	  FUNC6 (ptw32_selfThreadKey, (void *) sp);
	}
    }

  return (self);

}