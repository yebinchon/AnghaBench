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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_sigaction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void**,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (void*,unsigned long) ; 
 int /*<<< orphan*/  segv ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(void)
{
	unsigned long align;
	struct sigaction act = {
		.sa_sigaction = segv,
		.sa_flags = SA_SIGINFO
	};
	void *mallocblock;
	unsigned long mallocsize;

	FUNC1(!FUNC8());

	if (FUNC3() != 0x10000) {
		FUNC2(stderr, "Kernel page size must be 64K!\n");
		return 1;
	}

	FUNC7(SIGSEGV, &act, NULL);

	mallocsize = 4 * 16 * 1024 * 1024;

	FUNC0(FUNC4(&mallocblock, 64 * 1024, mallocsize));

	align = (unsigned long)mallocblock;
	if (align & 0xffff)
		align = (align | 0xffff) + 1;

	mallocblock = (void *)align;

	FUNC5("allocated malloc block of 0x%lx bytes at %p\n",
	       mallocsize, mallocblock);

	FUNC5("testing malloc block...\n");

	return FUNC6(mallocblock, mallocsize);
}