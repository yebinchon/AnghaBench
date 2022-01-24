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
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(const char *fname, bool isdir, int elevel)
{
	if (isdir)
	{
		if (FUNC4(fname) != 0 && errno != ENOENT)
			FUNC1(elevel,
					(FUNC2(),
					 FUNC3("could not remove directory \"%s\": %m", fname)));
	}
	else
	{
		/* Use PathNameDeleteTemporaryFile to report filesize */
		FUNC0(fname, false);
	}
}