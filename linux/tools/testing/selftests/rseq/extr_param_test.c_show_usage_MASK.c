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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(int argc, char **argv)
{
	FUNC0("Usage : %s <OPTIONS>\n",
		argv[0]);
	FUNC0("OPTIONS:\n");
	FUNC0("	[-1 loops] Number of loops for delay injection 1\n");
	FUNC0("	[-2 loops] Number of loops for delay injection 2\n");
	FUNC0("	[-3 loops] Number of loops for delay injection 3\n");
	FUNC0("	[-4 loops] Number of loops for delay injection 4\n");
	FUNC0("	[-5 loops] Number of loops for delay injection 5\n");
	FUNC0("	[-6 loops] Number of loops for delay injection 6\n");
	FUNC0("	[-7 loops] Number of loops for delay injection 7 (-1 to enable -m)\n");
	FUNC0("	[-8 loops] Number of loops for delay injection 8 (-1 to enable -m)\n");
	FUNC0("	[-9 loops] Number of loops for delay injection 9 (-1 to enable -m)\n");
	FUNC0("	[-m N] Yield/sleep/kill every modulo N (default 0: disabled) (>= 0)\n");
	FUNC0("	[-y] Yield\n");
	FUNC0("	[-k] Kill thread with signal\n");
	FUNC0("	[-s S] S: =0: disabled (default), >0: sleep time (ms)\n");
	FUNC0("	[-t N] Number of threads (default 200)\n");
	FUNC0("	[-r N] Number of repetitions per thread (default 5000)\n");
	FUNC0("	[-d] Disable rseq system call (no initialization)\n");
	FUNC0("	[-D M] Disable rseq for each M threads\n");
	FUNC0("	[-T test] Choose test: (s)pinlock, (l)ist, (b)uffer, (m)emcpy, (i)ncrement\n");
	FUNC0("	[-M] Push into buffer and memcpy buffer with memory barriers.\n");
	FUNC0("	[-v] Verbose output.\n");
	FUNC0("	[-h] Show this help.\n");
	FUNC0("\n");
}