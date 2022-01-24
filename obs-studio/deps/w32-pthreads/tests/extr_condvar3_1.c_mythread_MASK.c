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
 int ETIMEDOUT ; 
 int /*<<< orphan*/  abstime ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  awoken ; 
 int /*<<< orphan*/  cv ; 
 int /*<<< orphan*/  cv1 ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  mutex1 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timedout ; 
 int /*<<< orphan*/  waiting ; 

void *
FUNC5(void * arg)
{
  int result;

  FUNC0(FUNC3(&mutex1) == 0);
  ++waiting;
  FUNC0(FUNC4(&mutex1) == 0);
  FUNC0(FUNC1(&cv1) == 0);

  FUNC0(FUNC3(&mutex) == 0);
  result = FUNC2(&cv, &mutex, &abstime);
  if (result == ETIMEDOUT)
    {
      timedout++;
    }
  else
    {
      awoken++;
    }
  FUNC0(FUNC4(&mutex) == 0);

  return arg;
}