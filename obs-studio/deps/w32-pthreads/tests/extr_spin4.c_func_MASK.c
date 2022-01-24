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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  currSysTimeStart ; 
 int /*<<< orphan*/  currSysTimeStop ; 
 int /*<<< orphan*/  lock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int washere ; 

void * FUNC5(void * arg)
{
  FUNC1(&currSysTimeStart);
  washere = 1;
  FUNC2(FUNC3(&lock) == 0);
  FUNC2(FUNC4(&lock) == 0);
  FUNC1(&currSysTimeStop);

  return (void *)(size_t)FUNC0(currSysTimeStart, currSysTimeStop);
}