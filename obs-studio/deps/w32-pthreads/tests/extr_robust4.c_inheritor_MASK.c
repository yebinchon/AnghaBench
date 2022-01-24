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
 scalar_t__ EOWNERDEAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  lockCount ; 
 int /*<<< orphan*/ * mutex ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void * FUNC4(void * arg)
{
  int* o = (int*)arg;

  FUNC0(FUNC2(&mutex[o[0]]) == EOWNERDEAD);
  lockCount++;
  FUNC0(FUNC2(&mutex[o[1]]) == EOWNERDEAD);
  lockCount++;
  FUNC0(FUNC2(&mutex[o[2]]) == EOWNERDEAD);
  lockCount++;
  FUNC0(FUNC1(&mutex[o[2]]) == 0);
  FUNC0(FUNC1(&mutex[o[1]]) == 0);
  FUNC0(FUNC1(&mutex[o[0]]) == 0);
  FUNC0(FUNC3(&mutex[o[2]]) == 0);
  FUNC0(FUNC3(&mutex[o[1]]) == 0);
  FUNC0(FUNC3(&mutex[o[0]]) == 0);

  return 0;
}