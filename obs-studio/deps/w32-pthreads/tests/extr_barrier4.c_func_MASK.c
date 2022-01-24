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
 int PTHREAD_BARRIER_SERIAL_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  barrier ; 
 char** error_string ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mx ; 
 int /*<<< orphan*/  otherThreadCount ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  serialThreadCount ; 
 int /*<<< orphan*/  stdout ; 

void *
FUNC6(void * arg)
{
  int result = FUNC3(&barrier);

  FUNC0(FUNC4(&mx) == 0);

  if (result == PTHREAD_BARRIER_SERIAL_THREAD)
    {
      serialThreadCount++;
    }
  else if (0 == result)
    {
      otherThreadCount++;
    }
  else
    {
      FUNC2("Barrier wait failed: error = %s\n", error_string[result]);
      FUNC1(stdout);
      return NULL;
    }
  FUNC0(FUNC5(&mx) == 0);

  return NULL;
}