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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  DSCR_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPR_2 ; 
 int TAR_2 ; 
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* ptrace_write_running ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(pid_t child)
{
	FUNC0(FUNC2(child));
	FUNC0(FUNC4(child, TAR_2, PPR_2, DSCR_2));
	FUNC1("%-30s TAR: %u PPR: %lx DSCR: %u\n",
			ptrace_write_running, TAR_2, PPR_2, DSCR_2);

	FUNC0(FUNC3(child));
	return TEST_PASS;
}