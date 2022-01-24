#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int LONG ;

/* Variables and functions */
 int BARRIERMULTIPLE ; 
 int HEIGHT ; 
 int NUMTHREADS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  barrier ; 
 int /*<<< orphan*/  func ; 
 int /*<<< orphan*/  mx ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ totalThreadCrossings ; 

int
FUNC7()
{
  int i, j;
  void* result;
  int serialThreadsTotal;
  LONG Crossings;
  pthread_t t[NUMTHREADS + 1];

  for (j = 1; j <= NUMTHREADS; j++)
    {
      int height = j<HEIGHT?j:HEIGHT;

      totalThreadCrossings = 0;
      Crossings = height * BARRIERMULTIPLE;

      FUNC1("Threads=%d, Barrier height=%d\n", j, height);

      FUNC0(FUNC3(&barrier, NULL, height) == 0);

      for (i = 1; i <= j; i++)
        {
          FUNC0(FUNC4(&t[i], NULL, func, (void *)(size_t)Crossings) == 0);
        }

      serialThreadsTotal = 0;
      for (i = 1; i <= j; i++)
        {
          FUNC0(FUNC5(t[i], &result) == 0);
          serialThreadsTotal += (int)(size_t)result;
        }

      FUNC0(serialThreadsTotal == BARRIERMULTIPLE);

      FUNC0(FUNC2(&barrier) == 0);
    }

  FUNC0(FUNC6(&mx) == 0);

  return 0;
}