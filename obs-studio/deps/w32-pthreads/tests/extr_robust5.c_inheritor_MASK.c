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

void * FUNC2(void * arg)
{
  FUNC0(FUNC1(&mutex[0]) == EOWNERDEAD);
  lockCount++;
  FUNC0(FUNC1(&mutex[1]) == EOWNERDEAD);
  lockCount++;
  FUNC0(FUNC1(&mutex[2]) == EOWNERDEAD);
  lockCount++;

  return 0;
}