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
 int /*<<< orphan*/  DSCR_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPR_1 ; 
 int /*<<< orphan*/  TAR_1 ; 
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned long,unsigned long,unsigned long) ; 
 char* ptrace_read_running ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(pid_t child)
{
	unsigned long reg[3];

	FUNC0(FUNC3(child));
	FUNC0(FUNC2(child, reg));
	FUNC1("%-30s TAR: %lu PPR: %lx DSCR: %lu\n",
			ptrace_read_running, reg[0], reg[1], reg[2]);

	FUNC0(FUNC5(reg, TAR_1, PPR_1, DSCR_1));
	FUNC0(FUNC4(child));
	return TEST_PASS;
}