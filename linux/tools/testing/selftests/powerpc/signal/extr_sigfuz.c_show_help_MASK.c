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
 int COUNT_MAX ; 
 int THREADS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(char *name)
{
	FUNC1("%s: Sigfuzzer for powerpc\n", name);
	FUNC1("Usage:\n");
	FUNC1("\t-b\t Mess with TM before raising a SIGUSR1 signal\n");
	FUNC1("\t-a\t Mess with TM after raising a SIGUSR1 signal\n");
	FUNC1("\t-m\t Mess with MSR[TS] bits at mcontext\n");
	FUNC1("\t-x\t Mess with everything above\n");
	FUNC1("\t-f\t Run forever (Press ^C to Quit)\n");
	FUNC1("\t-i\t Amount of interactions.	(Default = %d)\n", COUNT_MAX);
	FUNC1("\t-t\t Amount of threads.	(Default = %d)\n", THREADS);
	FUNC0(-1);
}