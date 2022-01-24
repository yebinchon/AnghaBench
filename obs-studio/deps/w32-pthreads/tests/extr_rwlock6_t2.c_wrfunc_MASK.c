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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  abstime ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ bankAccount ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rwlock1 ; 

void * FUNC4(void * arg)
{
  int result;

  result = FUNC2(&rwlock1, &abstime);
  if ((int) (size_t)arg == 1)
    {
      FUNC1(result == 0);
      FUNC0(2000);
      bankAccount += 10;
      FUNC1(FUNC3(&rwlock1) == 0);
      return ((void *)(size_t)bankAccount);
    }
  else if ((int) (size_t)arg == 2)
    {
      FUNC1(result == ETIMEDOUT);
      return ((void *) 100);
    }

  return ((void *)(size_t)-1);
}