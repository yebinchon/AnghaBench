#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_4__ {int i; int /*<<< orphan*/  cs; } ;
struct TYPE_3__ {int i; int /*<<< orphan*/  cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NUM_ONCE ; 
 int NUM_THREADS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  mythread ; 
 TYPE_2__ numOnce ; 
 TYPE_1__ numThreads ; 
 int /*<<< orphan*/  o ; 
 int /*<<< orphan*/ * once ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7()
{
  pthread_t t[NUM_THREADS][NUM_ONCE];
  int i, j;
  
  FUNC1(&numThreads.cs);
  FUNC1(&numOnce.cs);

  for (j = 0; j < NUM_ONCE; j++)
    {
      once[j] = o;

      for (i = 0; i < NUM_THREADS; i++)
        {
	  /* GCC build: create was failing with EAGAIN after 790 threads */
          while (0 != FUNC4(&t[i][j], NULL, mythread, (void *)(size_t)j))
	    FUNC6();
        }
    }

  for (j = 0; j < NUM_ONCE; j++)
    for (i = 0; i < NUM_THREADS; i++)
      if (FUNC5(t[i][j], NULL) != 0)
        FUNC3("Join failed for [thread,once] = [%d,%d]\n", i, j);

  FUNC2(numOnce.i == NUM_ONCE);
  FUNC2(numThreads.i == NUM_THREADS * NUM_ONCE);

  FUNC0(&numOnce.cs);
  FUNC0(&numThreads.cs);

  return 0;
}