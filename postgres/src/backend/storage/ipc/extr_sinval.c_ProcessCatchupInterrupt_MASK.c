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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DEBUG4 ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ catchupInterruptPending ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void
FUNC5(void)
{
	while (catchupInterruptPending)
	{
		/*
		 * What we need to do here is cause ReceiveSharedInvalidMessages() to
		 * run, which will do the necessary work and also reset the
		 * catchupInterruptPending flag.  If we are inside a transaction we
		 * can just call AcceptInvalidationMessages() to do this.  If we
		 * aren't, we start and immediately end a transaction; the call to
		 * AcceptInvalidationMessages() happens down inside transaction start.
		 *
		 * It is awfully tempting to just call AcceptInvalidationMessages()
		 * without the rest of the xact start/stop overhead, and I think that
		 * would actually work in the normal case; but I am not sure that
		 * things would clean up nicely if we got an error partway through.
		 */
		if (FUNC2())
		{
			FUNC4(DEBUG4, "ProcessCatchupEvent inside transaction");
			FUNC0();
		}
		else
		{
			FUNC4(DEBUG4, "ProcessCatchupEvent outside transaction");
			FUNC3();
			FUNC1();
		}
	}
}