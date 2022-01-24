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
 scalar_t__ verbose ; 

void FUNC3(int argc, const char *argv[])
{
	if (FUNC0("CDUP") == ERROR && code == 500) {
		if (verbose) {
			FUNC2("CDUP command not recognized, trying XCUP\n");
			(void) FUNC1(stdout);
		}
		(void) FUNC0("XCUP");
	}
}