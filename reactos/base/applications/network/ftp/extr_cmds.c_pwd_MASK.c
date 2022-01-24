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
 scalar_t__ ERROR ; 
 int code ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int verbose ; 

void FUNC3(int argc, const char *argv[])
{
	int oldverbose = verbose;

	/*
	 * If we aren't verbose, this doesn't do anything!
	 */
	verbose = 1;
	if (FUNC0("PWD") == ERROR && code == 500) {
		FUNC2("PWD command not recognized, trying XPWD\n");
		(void) FUNC1(stdout);
		(void) FUNC0("XPWD");
	}
	verbose = oldverbose;
}