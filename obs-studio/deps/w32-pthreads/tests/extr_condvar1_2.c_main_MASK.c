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
 int NUM_CV ; 
 int NUM_LOOPS ; 
 int RAND_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ ** cv ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  pthread_timechange_handler_np ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8()
{
  int i, j, k;
  void* result = (void*)-1;
  pthread_t t;

  for (k = 0; k < NUM_LOOPS; k++)
    {
      for (i = 0; i < NUM_CV; i++)
        {
          FUNC0(FUNC2(&cv[i], NULL) == 0);
        }

      j = NUM_CV;
      (void) FUNC6((unsigned)FUNC7(NULL));

      /* Traverse the list asynchronously. */
      FUNC0(FUNC3(&t, NULL, pthread_timechange_handler_np, NULL) == 0);

      do
        {
          i = (NUM_CV - 1) * FUNC5() / RAND_MAX;
          if (cv[i] != NULL)
            {
              j--;
              FUNC0(FUNC1(&cv[i]) == 0);
            }
        }
      while (j > 0);

      FUNC0(FUNC4(t, &result) == 0);
      FUNC0 ((int)(size_t)result == 0);
    }

  return 0;
}