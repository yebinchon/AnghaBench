#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_5__ {int threadnum; int oncenum; } ;
typedef  TYPE_1__ bag_t ;
struct TYPE_7__ {int i; int /*<<< orphan*/  cs; } ;
struct TYPE_6__ {int /*<<< orphan*/  cs; int /*<<< orphan*/  i; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int NUM_ONCE ; 
 int NUM_THREADS ; 
 int /*<<< orphan*/  REALTIME_PRIORITY_CLASS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  mythread ; 
 TYPE_4__ numOnce ; 
 TYPE_3__ numThreads ; 
 int /*<<< orphan*/  o ; 
 int /*<<< orphan*/ * once ; 
 int /*<<< orphan*/  print_lock ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_1__** threadbag ; 

int
FUNC11()
{
  pthread_t t[NUM_THREADS][NUM_ONCE];
  int i, j;
  
  FUNC3(&print_lock);
  FUNC3(&numThreads.cs);
  FUNC3(&numOnce.cs);

#if 0
  /*       once thrd  prio change */
  printf("once thrd  prio  error\n");
#endif

  /*
   * Set the priority class to realtime - otherwise normal
   * Windows random priority boosting will obscure any problems.
   */
  FUNC4(FUNC1(), REALTIME_PRIORITY_CLASS);
  /* Set main thread to lower prio than threads */
  FUNC5(FUNC2(), -2);

  for (j = 0; j < NUM_ONCE; j++)
    {
      once[j] = o;

      for (i = 0; i < NUM_THREADS; i++)
        {
	  bag_t * bag = &threadbag[i][j];
	  bag->threadnum = i;
	  bag->oncenum = j;
          /* GCC build: create was failing with EAGAIN after 790 threads */
          while (0 != FUNC8(&t[i][j], NULL, mythread, (void *)bag))
            FUNC10();
        }
    }

  for (j = 0; j < NUM_ONCE; j++)
    for (i = 0; i < NUM_THREADS; i++)
      if (FUNC9(t[i][j], NULL) != 0)
        FUNC7("Join failed for [thread,once] = [%d,%d]\n", i, j);

  /*
   * All threads will cancel, none will return normally from
   * pthread_once and so numThreads should never be incremented. However,
   * numOnce should be incremented by every thread (NUM_THREADS*NUM_ONCE).
   */
  FUNC6(numOnce.i == NUM_ONCE * NUM_THREADS);
  FUNC6(numThreads.i == 0);

  FUNC0(&numOnce.cs);
  FUNC0(&numThreads.cs);
  FUNC0(&print_lock);

  return 0;
}