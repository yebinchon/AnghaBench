#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sec_attrs ;
struct TYPE_4__ {int nLength; int /*<<< orphan*/  bInheritHandle; int /*<<< orphan*/ * lpSecurityDescriptor; } ;
typedef  TYPE_1__ SECURITY_ATTRIBUTES ;
typedef  int /*<<< orphan*/  PGSemaphore ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ maxSems ; 
 scalar_t__* mySemSet ; 
 scalar_t__ numSems ; 

PGSemaphore
FUNC7(void)
{
	HANDLE		cur_handle;
	SECURITY_ATTRIBUTES sec_attrs;

	/* Can't do this in a backend, because static state is postmaster's */
	FUNC0(!IsUnderPostmaster);

	if (numSems >= maxSems)
		FUNC4(PANIC, "too many semaphores created");

	FUNC3(&sec_attrs, sizeof(sec_attrs));
	sec_attrs.nLength = sizeof(sec_attrs);
	sec_attrs.lpSecurityDescriptor = NULL;
	sec_attrs.bInheritHandle = TRUE;

	/* We don't need a named semaphore */
	cur_handle = FUNC1(&sec_attrs, 1, 32767, NULL);
	if (cur_handle)
	{
		/* Successfully done */
		mySemSet[numSems++] = cur_handle;
	}
	else
		FUNC5(PANIC,
				(FUNC6("could not create semaphore: error code %lu",
						FUNC2())));

	return (PGSemaphore) cur_handle;
}