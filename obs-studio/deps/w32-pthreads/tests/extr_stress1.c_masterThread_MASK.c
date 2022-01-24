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
struct TYPE_2__ {int value; int /*<<< orphan*/  cv; int /*<<< orphan*/  mx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  allExit ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int bias ; 
 TYPE_1__ control ; 
 int /*<<< orphan*/  holdBarrier ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  readyBarrier ; 
 int signalsSent ; 
 scalar_t__ signalsTakenCount ; 
 int /*<<< orphan*/  startBarrier ; 
 int timeout ; 
 scalar_t__ timeoutCount ; 

void *
FUNC6 (void * arg)
{
  int dither = (int)(size_t)arg;

  timeout = (int)(size_t)arg;

  FUNC2(&startBarrier);

  do
    {
      int sleepTime;

      FUNC1(FUNC4(&control.mx) == 0);
      control.value = timeout;
      FUNC1(FUNC5(&control.mx) == 0);

      /*
       * We are attempting to send the signal close to when the slave
       * is due to timeout. We feel around by adding some [non-random] dither.
       *
       * dither is in the range 2*timeout peak-to-peak
       * sleep time is the average of timeout plus dither.
       * e.g.
       * if timeout = 10 then dither = 20 and
       * sleep millisecs is: 5 <= ms <= 15
       *
       * The bias value attempts to apply some negative feedback to keep
       * the ratio of timeouts to signals taken close to 1:1.
       * bias changes more slowly than dither so as to average more.
       *
       * Finally, if abs(bias) exceeds timeout then timeout is incremented.
       */
      if (signalsSent % timeout == 0)
	{
          if (timeoutCount > signalsTakenCount)
	    {
	      bias++;
	    }
          else if (timeoutCount < signalsTakenCount)
	    {
	      bias--;
	    }
	  if (bias < -timeout || bias > timeout)
	    {
	      timeout++;
	    }
	}
      dither = (dither + 1 ) % (timeout * 2);
      sleepTime = (timeout - bias + dither) / 2;
      FUNC0(sleepTime);
      FUNC1(FUNC3(&control.cv) == 0);
      signalsSent++;

      FUNC2(&holdBarrier);
      FUNC2(&readyBarrier);
    }
  while (!allExit);

  return NULL;
}