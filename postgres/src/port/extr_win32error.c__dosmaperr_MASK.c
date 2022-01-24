#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long winerr; int doserr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG5 ; 
 int EINVAL ; 
 int /*<<< orphan*/  LOG ; 
 TYPE_1__* doserrors ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4(unsigned long e)
{
	int			i;

	if (e == 0)
	{
		errno = 0;
		return;
	}

	for (i = 0; i < FUNC3(doserrors); i++)
	{
		if (doserrors[i].winerr == e)
		{
			int			doserr = doserrors[i].doserr;

#ifndef FRONTEND
			FUNC0(DEBUG5,
					(FUNC1("mapped win32 error code %lu to %d",
									 e, doserr)));
#elif defined(FRONTEND_DEBUG)
			fprintf(stderr, "mapped win32 error code %lu to %d", e, doserr);
#endif
			errno = doserr;
			return;
		}
	}

#ifndef FRONTEND
	FUNC0(LOG,
			(FUNC1("unrecognized win32 error code: %lu",
							 e)));
#else
	fprintf(stderr, "unrecognized win32 error code: %lu", e);
#endif

	errno = EINVAL;
	return;
}