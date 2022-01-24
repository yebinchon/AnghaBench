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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(const char *filename, bool restricted)
{
	char	   *fullname;

	/* Apply security restriction if requested */
	if (restricted)
		FUNC0(filename);

	/* Expand the possibly-abbreviated filename to an exact path name */
	fullname = FUNC1(filename);

	/* Unload the library if currently loaded */
	FUNC3(fullname);

	/* Load the shared library */
	(void) FUNC2(fullname);

	FUNC4(fullname);
}