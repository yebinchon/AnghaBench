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

/* Variables and functions */
 int NUM_CV ; 
 int RAND_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ ** cv ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7()
{
  int i, j;

  for (i = 0; i < NUM_CV; i++)
    {
      /* Traverse the list before every init of a CV. */
      FUNC0(FUNC3(NULL) == (void *) 0);
      FUNC0(FUNC2(&cv[i], NULL) == 0);
    }

  j = NUM_CV;
  (void) FUNC5((unsigned)FUNC6(NULL));

  do
    {
      i = (NUM_CV - 1) * FUNC4() / RAND_MAX;
      if (cv[i] != NULL)
        {
          j--;
          FUNC0(FUNC1(&cv[i]) == 0);
          /* Traverse the list every time we remove a CV. */
          FUNC0(FUNC3(NULL) == (void *) 0);
        }
    }
  while (j > 0);

  return 0;
}