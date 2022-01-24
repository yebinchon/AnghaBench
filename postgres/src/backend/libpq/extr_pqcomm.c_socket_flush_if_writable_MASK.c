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
 int PqCommBusy ; 
 scalar_t__ PqSendPointer ; 
 scalar_t__ PqSendStart ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(void)
{
	int			res;

	/* Quick exit if nothing to do */
	if (PqSendPointer == PqSendStart)
		return 0;

	/* No-op if reentrant call */
	if (PqCommBusy)
		return 0;

	/* Temporarily put the socket into non-blocking mode */
	FUNC1(true);

	PqCommBusy = true;
	res = FUNC0();
	PqCommBusy = false;
	return res;
}