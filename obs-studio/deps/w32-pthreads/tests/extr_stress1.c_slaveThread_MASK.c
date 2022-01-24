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
struct timespec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mx; int /*<<< orphan*/  value; int /*<<< orphan*/  cv; } ;

/* Variables and functions */
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  allExit ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ control ; 
 int /*<<< orphan*/  holdBarrier ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  readyBarrier ; 
 int /*<<< orphan*/  signalsTakenCount ; 
 int /*<<< orphan*/  startBarrier ; 
 int /*<<< orphan*/  timeoutCount ; 

void *
FUNC6 (void * arg)
{
  struct timespec time;

  FUNC2(&startBarrier);

  do
    {
      FUNC0(FUNC4(&control.mx) == 0);
      if (FUNC3(&control.cv,
				 &control.mx,
				 FUNC1(&time, control.value)) == ETIMEDOUT)
	{
	  timeoutCount++;
	}
      else
	{
	  signalsTakenCount++;
	}
      FUNC0(FUNC5(&control.mx) == 0);

      FUNC2(&holdBarrier);
      FUNC2(&readyBarrier);
    }
  while (!allExit);

  return NULL;
}