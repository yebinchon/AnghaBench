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
typedef  int /*<<< orphan*/  PGSemaphore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SpinlockSemaArray ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 

void
FUNC4(void)
{
	PGSemaphore *spinsemas;
	int			nsemas = FUNC3();
	int			i;

	/*
	 * We must use ShmemAllocUnlocked(), since the spinlock protecting
	 * ShmemAlloc() obviously can't be ready yet.
	 */
	spinsemas = (PGSemaphore *) FUNC1(FUNC2());
	for (i = 0; i < nsemas; ++i)
		spinsemas[i] = FUNC0();
	SpinlockSemaArray = spinsemas;
}