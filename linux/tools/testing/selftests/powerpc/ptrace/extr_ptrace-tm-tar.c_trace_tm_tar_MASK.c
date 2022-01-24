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
 int /*<<< orphan*/  DSCR_2 ; 
 unsigned long DSCR_4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPR_1 ; 
 int /*<<< orphan*/  PPR_2 ; 
 unsigned long PPR_4 ; 
 int /*<<< orphan*/  TAR_1 ; 
 int /*<<< orphan*/  TAR_2 ; 
 int TAR_4 ; 
 int TEST_PASS ; 
 int* pptr ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,unsigned long,unsigned long) ; 
 char* ptrace_read_ckpt ; 
 char* ptrace_read_running ; 
 char* ptrace_write_ckpt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,unsigned long,unsigned long) ; 

int FUNC8(pid_t child)
{
	unsigned long regs[3];

	FUNC0(FUNC4(child));
	FUNC0(FUNC2(child, regs));
	FUNC1("%-30s TAR: %lu PPR: %lx DSCR: %lu\n",
			ptrace_read_running, regs[0], regs[1], regs[2]);

	FUNC0(FUNC6(regs, TAR_2, PPR_2, DSCR_2));
	FUNC0(FUNC3(child, regs));
	FUNC1("%-30s TAR: %lu PPR: %lx DSCR: %lu\n",
			ptrace_read_ckpt, regs[0], regs[1], regs[2]);

	FUNC0(FUNC6(regs, TAR_1, PPR_1, DSCR_1));
	FUNC0(FUNC7(child, TAR_4, PPR_4, DSCR_4));
	FUNC1("%-30s TAR: %u PPR: %lx DSCR: %u\n",
			ptrace_write_ckpt, TAR_4, PPR_4, DSCR_4);

	pptr[0] = 1;
	FUNC0(FUNC5(child));
	return TEST_PASS;
}