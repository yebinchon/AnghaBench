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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ DoingCommandRead ; 
 int /*<<< orphan*/  MyLatch ; 
 scalar_t__ ProcDiePending ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ catchupInterruptPending ; 
 int errno ; 
 scalar_t__ notifyInterruptPending ; 

void
FUNC4(bool blocked)
{
	int			save_errno = errno;

	if (DoingCommandRead)
	{
		/* Check for general interrupts that arrived before/while reading */
		FUNC0();

		/* Process sinval catchup interrupts, if any */
		if (catchupInterruptPending)
			FUNC1();

		/* Process notify interrupts, if any */
		if (notifyInterruptPending)
			FUNC2();
	}
	else if (ProcDiePending)
	{
		/*
		 * We're dying.  If there is no data available to read, then it's safe
		 * (and sane) to handle that now.  If we haven't tried to read yet,
		 * make sure the process latch is set, so that if there is no data
		 * then we'll come back here and die.  If we're done reading, also
		 * make sure the process latch is set, as we might've undesirably
		 * cleared it while reading.
		 */
		if (blocked)
			FUNC0();
		else
			FUNC3(MyLatch);
	}

	errno = save_errno;
}