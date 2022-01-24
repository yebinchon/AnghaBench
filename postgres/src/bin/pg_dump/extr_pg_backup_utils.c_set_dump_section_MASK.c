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
 int DUMP_DATA ; 
 int DUMP_POST_DATA ; 
 int DUMP_PRE_DATA ; 
 int DUMP_UNSECTIONED ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

void
FUNC5(const char *arg, int *dumpSections)
{
	/* if this is the first call, clear all the bits */
	if (*dumpSections == DUMP_UNSECTIONED)
		*dumpSections = 0;

	if (FUNC4(arg, "pre-data") == 0)
		*dumpSections |= DUMP_PRE_DATA;
	else if (FUNC4(arg, "data") == 0)
		*dumpSections |= DUMP_DATA;
	else if (FUNC4(arg, "post-data") == 0)
		*dumpSections |= DUMP_POST_DATA;
	else
	{
		FUNC3("unrecognized section name: \"%s\"", arg);
		FUNC2(stderr, FUNC0("Try \"%s --help\" for more information.\n"),
				progname);
		FUNC1(1);
	}
}