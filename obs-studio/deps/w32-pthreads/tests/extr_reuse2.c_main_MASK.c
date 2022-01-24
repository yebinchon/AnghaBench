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
struct TYPE_3__ {unsigned int x; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  LPLONG ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,long) ; 
 int NUMTHREADS ; 
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  func ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7()
{
  pthread_t t[NUMTHREADS];
  pthread_attr_t attr;
  int i;
  unsigned int notUnique = 0,
	       totalHandles = 0,
	       reuseMax = 0,
	       reuseMin = NUMTHREADS;

  FUNC2(FUNC4(&attr) == 0);
  FUNC2(FUNC5(&attr, PTHREAD_CREATE_DETACHED) == 0);

  for (i = 0; i < NUMTHREADS; i++)
    {
      while(FUNC6(&t[i], &attr, func, NULL) != 0)
        FUNC1(1);
    }

  while (NUMTHREADS > FUNC0((LPLONG)&done, 0L))
    FUNC1(100);

  FUNC1(100);

  /*
   * Analyse reuse by computing min and max number of times pthread_create()
   * returned the same pthread_t value.
   */
  for (i = 0; i < NUMTHREADS; i++)
    {
      if (t[i].p != NULL)
        {
          unsigned int j, thisMax;

          thisMax = t[i].x;

          for (j = i+1; j < NUMTHREADS; j++)
            if (t[i].p == t[j].p)
              {
		if (t[i].x == t[j].x)
		  notUnique++;
                if (thisMax < t[j].x)
                  thisMax = t[j].x;
                t[j].p = NULL;
              }

          if (reuseMin > thisMax)
            reuseMin = thisMax;

          if (reuseMax < thisMax)
            reuseMax = thisMax;
        }
    }

  for (i = 0; i < NUMTHREADS; i++)
    if (t[i].p != NULL)
      totalHandles++;

  /*
   * pthread_t reuse counts start at 0, so we need to add 1
   * to the max and min values derived above.
   */
  FUNC3("For %d total threads:\n", NUMTHREADS);
  FUNC3("Non-unique IDs = %d\n", notUnique);
  FUNC3("Reuse maximum  = %d\n", reuseMax + 1);
  FUNC3("Reuse minimum  = %d\n", reuseMin + 1);
  FUNC3("Total handles  = %d\n", totalHandles);

  return 0;
}