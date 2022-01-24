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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(const char *initfilename, int elevel)
{
	if (FUNC3(initfilename) < 0)
	{
		/* It might not be there, but log any error other than ENOENT */
		if (errno != ENOENT)
			FUNC0(elevel,
					(FUNC1(),
					 FUNC2("could not remove cache file \"%s\": %m",
							initfilename)));
	}
}