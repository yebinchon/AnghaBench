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

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int NUMTHREADS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  barrier ; 
 int /*<<< orphan*/  func ; 
 int /*<<< orphan*/  mx ; 
 int otherThreadCount ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int serialThreadCount ; 

int
FUNC7()
{
  int i, j, k;
  pthread_t t[NUMTHREADS + 1];

  for (j = 1; j <= NUMTHREADS; j++)
    {
      int howHigh = j/2 + 1;

      FUNC1("Barrier height = %d, Total threads %d\n", howHigh, j);

      serialThreadCount = 0;
      otherThreadCount = 0;

      FUNC0(FUNC3(&barrier, NULL, howHigh) == 0);

      for (i = 1; i <= j; i++)
        {
          FUNC0(FUNC4(&t[i], NULL, func, NULL) == 0);

          if (i == howHigh)
            {
              for (k = 1; k <= howHigh; k++)
                {
                  FUNC0(FUNC5(t[k], NULL) == 0);
                }
              FUNC0(FUNC2(&barrier) == 0);
            }
        }

      for (i = howHigh+1; i <= j; i++)
        {
          FUNC0(FUNC5(t[i], NULL) == 0);
        }

      FUNC0(serialThreadCount == 1);
      FUNC0(otherThreadCount == (howHigh - 1));

      FUNC0(FUNC2(&barrier) == EINVAL);
    }

  FUNC0(FUNC6(&mx) == 0);

  return 0;
}