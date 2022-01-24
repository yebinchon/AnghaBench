#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mx; int /*<<< orphan*/  cv; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 unsigned int ITERATIONS ; 
 scalar_t__ TRUE ; 
 scalar_t__ allExit ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ bias ; 
 TYPE_1__ control ; 
 int /*<<< orphan*/  holdBarrier ; 
 int /*<<< orphan*/  master ; 
 int /*<<< orphan*/  masterThread ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  readyBarrier ; 
 int signalsSent ; 
 int signalsTakenCount ; 
 int /*<<< orphan*/  slave ; 
 int /*<<< orphan*/  slaveThread ; 
 int /*<<< orphan*/  startBarrier ; 
 int timeout ; 
 int timeoutCount ; 

int
FUNC9 ()
{
  unsigned int i;

  FUNC0(FUNC3(&startBarrier, NULL, 3) == 0);
  FUNC0(FUNC3(&readyBarrier, NULL, 3) == 0);
  FUNC0(FUNC3(&holdBarrier, NULL, 3) == 0);

  FUNC0(FUNC6(&master, NULL, masterThread, (void *)(size_t)timeout) == 0);
  FUNC0(FUNC6(&slave, NULL, slaveThread, NULL) == 0);

  allExit = FALSE;

  FUNC4(&startBarrier);

  for (i = 1; !allExit; i++)
    {
      FUNC4(&holdBarrier);
      if (i >= ITERATIONS)
	{
	  allExit = TRUE;
	}
      FUNC4(&readyBarrier);
    }

  FUNC0(FUNC7(slave, NULL) == 0);
  FUNC0(FUNC7(master, NULL) == 0);

  FUNC1("Signals sent = %d\nWait timeouts = %d\nSignals taken = %d\nBias = %d\nTimeout = %d\n",
	 signalsSent,
	 timeoutCount,
	 signalsTakenCount,
	 (int) bias,
	 timeout);

  /* Cleanup */
  FUNC0(FUNC2(&holdBarrier) == 0);
  FUNC0(FUNC2(&readyBarrier) == 0);
  FUNC0(FUNC2(&startBarrier) == 0);
  FUNC0(FUNC5(&control.cv) == 0);
  FUNC0(FUNC8(&control.mx) == 0);

  /* Success. */
  return 0;
}