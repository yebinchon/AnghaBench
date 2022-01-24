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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 

bool
FUNC4(PGSemaphore sema)
{
	DWORD		ret;

	ret = FUNC1(sema, 0);

	if (ret == WAIT_OBJECT_0)
	{
		/* We got it! */
		return true;
	}
	else if (ret == WAIT_TIMEOUT)
	{
		/* Can't get it */
		errno = EAGAIN;
		return false;
	}

	/* Otherwise we are in trouble */
	FUNC2(FATAL,
			(FUNC3("could not try-lock semaphore: error code %lu",
					FUNC0())));

	/* keep compiler quiet */
	return false;
}