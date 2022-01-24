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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pendingOps ; 
 scalar_t__ pendingUnlinks ; 

void
FUNC3(void)
{
	/* Perform any pending fsyncs we may have queued up, then drop table */
	if (pendingOps)
	{
		FUNC1();
		FUNC2(pendingOps);
	}
	pendingOps = NULL;

	/*
	 * We should not have any pending unlink requests, since mdunlink doesn't
	 * queue unlink requests when isRedo.
	 */
	FUNC0(pendingUnlinks == NIL);
}