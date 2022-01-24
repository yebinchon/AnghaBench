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
struct TYPE_3__ {int id; int work; int stat; int /*<<< orphan*/  mutex_ended; int /*<<< orphan*/  mutex_end; int /*<<< orphan*/  mutex_started; int /*<<< orphan*/  mutex_start; int /*<<< orphan*/  thread; } ;
typedef  TYPE_1__ TC ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  mutex_stdout ; 
 int /*<<< orphan*/  mutex_todo ; 
 int nthreads ; 
 scalar_t__ print_server ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* tcs ; 
 int todo ; 

int
FUNC13 (int argc, char *argv[])
{
  int		i;

  FUNC0(NULL != (tcs = (TC *) FUNC1 (nthreads, sizeof (*tcs))));

  /* 
   * Launch threads
   */
  for (i = 0; i < nthreads; ++i)
    {
      tcs[i].id = i;

      FUNC0(FUNC9 (&tcs[i].mutex_start, NULL) == 0);
      FUNC0(FUNC9 (&tcs[i].mutex_started, NULL) == 0);
      FUNC0(FUNC9 (&tcs[i].mutex_end, NULL) == 0);
      FUNC0(FUNC9 (&tcs[i].mutex_ended, NULL) == 0);

      tcs[i].work = 0;  

      FUNC0(FUNC10 (&tcs[i].mutex_start) == 0);
      FUNC0((tcs[i].stat = 
	      FUNC6 (&tcs[i].thread,
			      NULL,
                  (void *(*)(void *))print_server,
                (void *) &tcs[i])
	      ) == 0);

      /* 
       * Wait for thread initialisation
       */
      {
	int trylock = 0;

	while (trylock == 0)
	  {
	    trylock = FUNC11(&tcs[i].mutex_started);
	    FUNC0(trylock == 0 || trylock == EBUSY);

	    if (trylock == 0)
	      {
		FUNC0(FUNC12 (&tcs[i].mutex_started) == 0);
	      }
	  }
      }
    }

  FUNC4 ();

  /*
   * Terminate threads
   */
  todo = -2;	/* please terminate */
  FUNC3();

  for (i = 0; i < nthreads; ++i)
    {
      if (0 == tcs[i].stat)
	FUNC0(FUNC7 (tcs[i].thread, NULL) == 0);
    }

  /* 
   * destroy locks
   */
  FUNC0(FUNC8 (&mutex_stdout) == 0);
  FUNC0(FUNC8 (&mutex_todo) == 0);

  /*
   * Cleanup
   */
  FUNC5 ("\n");

  /*
   * Show results
   */
  for (i = 0; i < nthreads; ++i)
    {
      FUNC5 ("%2d ", i);
      if (0 == tcs[i].stat)
	FUNC5 ("%10ld\n", tcs[i].work);
      else
	FUNC5 ("failed %d\n", tcs[i].stat);

      FUNC0(FUNC12(&tcs[i].mutex_start) == 0);

      FUNC0(FUNC8 (&tcs[i].mutex_start) == 0);
      FUNC0(FUNC8 (&tcs[i].mutex_started) == 0);
      FUNC0(FUNC8 (&tcs[i].mutex_end) == 0);
      FUNC0(FUNC8 (&tcs[i].mutex_ended) == 0);
    }

  FUNC2 (0);

  return (0);
}