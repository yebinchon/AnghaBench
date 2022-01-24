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
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  IsPostmasterEnvironment ; 
 int /*<<< orphan*/  LocalLatchData ; 
 int /*<<< orphan*/ * MyLatch ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* my_exec_path ; 
 char* pkglib_path ; 

void
FUNC7(const char *argv0)
{
	FUNC0(!IsPostmasterEnvironment);

	FUNC2();

	/* Initialize process-local latch support */
	FUNC3();
	MyLatch = &LocalLatchData;
	FUNC1(MyLatch);

	/* Compute paths, no postmaster to inherit from */
	if (my_exec_path[0] == '\0')
	{
		if (FUNC5(argv0, my_exec_path) < 0)
			FUNC4(FATAL, "%s: could not locate my own executable path",
				 argv0);
	}

	if (pkglib_path[0] == '\0')
		FUNC6(my_exec_path, pkglib_path);
}