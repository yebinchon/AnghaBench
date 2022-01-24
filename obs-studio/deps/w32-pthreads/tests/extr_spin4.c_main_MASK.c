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
typedef  int /*<<< orphan*/  PTW32_STRUCT_TIMEB ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  currSysTimeStart ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  func ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void**) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int washere ; 

int
FUNC12()
{
  void* result = (void*)0;
  pthread_t t;
  int CPUs;
  PTW32_STRUCT_TIMEB sysTime;

  if ((CPUs = FUNC7()) == 1)
    {
      FUNC4("Test not run - it requires multiple CPUs.\n");
	FUNC3(0);
    }

  FUNC2(FUNC9(&lock) == 0);

  FUNC2(FUNC5(&t, NULL, func, NULL) == 0);

  while (washere == 0)
    {
      FUNC11();
    }

  do
    {
      FUNC11();
      FUNC1(&sysTime);
    }
  while (FUNC0(currSysTimeStart, sysTime) <= 1000);

  FUNC2(FUNC10(&lock) == 0);

  FUNC2(FUNC6(t, &result) == 0);
  FUNC2((int)(size_t)result > 1000);

  FUNC2(FUNC8(&lock) == 0);

  FUNC2(washere == 1);

  return 0;
}