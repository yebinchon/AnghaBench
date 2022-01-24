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
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ errno ; 

void
FUNC4(const char *basedir, const char *directory)
{
	if (FUNC0(directory) < 0)
	{
		if (errno == EEXIST)
			return;

		/*
		 * Failed.  Try to create basedir first in case it's missing. Tolerate
		 * EEXIST to close a race against another process following the same
		 * algorithm.
		 */
		if (FUNC0(basedir) < 0 && errno != EEXIST)
			FUNC1(ERROR,
					(FUNC2(),
					 FUNC3("cannot create temporary directory \"%s\": %m",
							basedir)));

		/* Try again. */
		if (FUNC0(directory) < 0 && errno != EEXIST)
			FUNC1(ERROR,
					(FUNC2(),
					 FUNC3("cannot create temporary subdirectory \"%s\": %m",
							directory)));
	}
}