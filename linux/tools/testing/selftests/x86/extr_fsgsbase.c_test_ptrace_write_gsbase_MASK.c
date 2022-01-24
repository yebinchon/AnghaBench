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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_CONT ; 
 int /*<<< orphan*/  PTRACE_PEEKUSER ; 
 int /*<<< orphan*/  PTRACE_POKEUSER ; 
 int /*<<< orphan*/  PTRACE_TRACEME ; 
 scalar_t__ SIGTRAP ; 
 unsigned long FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 () ; 
 unsigned long gs_base ; 
 unsigned long FUNC5 () ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ,scalar_t__,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 unsigned long* shared_scratch ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 

__attribute__((used)) static void FUNC10(void)
{
	int status;
	pid_t child = FUNC4();

	if (child < 0)
		FUNC3(1, "fork");

	if (child == 0) {
		FUNC6("[RUN]\tPTRACE_POKE(), write GSBASE from ptracer\n");

		*shared_scratch = FUNC5();

		if (FUNC7(PTRACE_TRACEME, 0, NULL, NULL) != 0)
			FUNC3(1, "PTRACE_TRACEME");

		FUNC8(SIGTRAP);
		FUNC2(0);
	}

	FUNC9(&status);

	if (FUNC1(status) == SIGTRAP) {
		unsigned long gs, base;
		unsigned long gs_offset = FUNC0(gs);
		unsigned long base_offset = FUNC0(gs_base);

		gs = FUNC7(PTRACE_PEEKUSER, child, gs_offset, NULL);

		if (gs != *shared_scratch) {
			nerrs++;
			FUNC6("[FAIL]\tGS is not prepared with nonzero\n");
			goto END;
		}

		if (FUNC7(PTRACE_POKEUSER, child, base_offset, 0xFF) != 0)
			FUNC3(1, "PTRACE_POKEUSER");

		gs = FUNC7(PTRACE_PEEKUSER, child, gs_offset, NULL);
		base = FUNC7(PTRACE_PEEKUSER, child, base_offset, NULL);

		/*
		 * In a non-FSGSBASE system, the nonzero selector will load
		 * GSBASE (again). But what is tested here is whether the
		 * selector value is changed or not by the GSBASE write in
		 * a ptracer.
		 */
		if (gs == 0 && base == 0xFF) {
			FUNC6("[OK]\tGS was reset as expected\n");
		} else {
			nerrs++;
			FUNC6("[FAIL]\tGS=0x%lx, GSBASE=0x%lx (should be 0, 0xFF)\n", gs, base);
		}
	}

END:
	FUNC7(PTRACE_CONT, child, NULL, NULL);
}