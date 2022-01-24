#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ pthread_t ;
struct TYPE_8__ {int started; int threadnum; int count; } ;

/* Variables and functions */
 int NUMTHREADS ; 
 void* PTHREAD_CANCELED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  mythread ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_1__) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC6 (TYPE_1__,void**) ; 
 TYPE_1__ FUNC7 () ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_2__* threadbag ; 

int
FUNC8()
{
  int failed = 0;
  int i;
  pthread_t t[NUMTHREADS + 1];

  FUNC1((t[0] = FUNC7()).p != NULL);

  for (i = 1; i <= NUMTHREADS; i++)
    {
      threadbag[i].started = 0;
      threadbag[i].threadnum = i;
      FUNC1(FUNC5(&t[i], NULL, mythread, (void *)(size_t) &threadbag[i]) == 0);
    }

  /*
   * Code to control or munipulate child threads should probably go here.
   */
  FUNC0(500);

  for (i = 1; i <= NUMTHREADS; i++)
    {
      FUNC1(FUNC4(t[i]) == 0);
      if (FUNC4(t[i]) != 0)
        {
          FUNC3("Second cancelation failed but this is expected sometimes.\n");
        }
    }

  /*
   * Give threads time to run.
   */
  FUNC0(NUMTHREADS * 100);

  /*
   * Standard check that all threads started.
   */
  for (i = 1; i <= NUMTHREADS; i++)
    {
      if (!threadbag[i].started)
	{
	  failed |= !threadbag[i].started;
	  FUNC2(stderr, "Thread %d: started %d\n", i, threadbag[i].started);
	}
    }

  FUNC1(!failed);

  /*
   * Check any results here. Set "failed" and only print output on failure.
   */
  failed = 0;
  for (i = 1; i <= NUMTHREADS; i++)
    {
      int fail = 0;
      void* result = (void*)0;

      FUNC1(FUNC6(t[i], &result) == 0);

      fail = (result != PTHREAD_CANCELED);

      if (fail)
	{
	  FUNC2(stderr, "Thread %d: started %d: count %d\n",
		  i,
		  threadbag[i].started,
		  threadbag[i].count);
	}
      failed = (failed || fail);
    }

  FUNC1(!failed);

  /*
   * Success.
   */
  return 0;
}