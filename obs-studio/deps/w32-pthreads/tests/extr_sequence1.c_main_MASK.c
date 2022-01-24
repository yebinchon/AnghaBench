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
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int* seqmap ; 

int
FUNC8()
{
  pthread_t t[NUMTHREADS];
  pthread_attr_t attr;
  int i;

  FUNC2(FUNC3(&attr) == 0);
  FUNC2(FUNC4(&attr, PTHREAD_CREATE_DETACHED) == 0);

  for (i = 0; i < NUMTHREADS+2; i++)
    {
      seqmap[i] = 0;
    }

  for (i = 0; i < NUMTHREADS; i++)
    {
      if (NUMTHREADS/2 == i)
        {
          /* Include this main thread, which will be an implicit pthread_t */
          seqmap[(int)FUNC6(FUNC7())] = 1;
        }
      FUNC2(FUNC5(&t[i], &attr, func, NULL) == 0);
    }

  while (NUMTHREADS > FUNC0((LPLONG)&done, 0L))
    FUNC1(100);

  FUNC1(100);

  FUNC2(seqmap[0] == 0);
  for (i = 1; i < NUMTHREADS+2; i++)
    {
      FUNC2(seqmap[i] == 1);
    }

  return 0;
}