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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SYSINFO_EHDR ; 
 unsigned long ENOENT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  SYS_exit ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 () ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (void*,unsigned long) ; 
 int FUNC7 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC8(int argc, char **argv, char **envp)
{
	pid_t child;

	child = FUNC2();
	if (child == -1) {
		FUNC4("[WARN]\tfailed to fork (%d): %m\n", errno);
		return 1;
	}

	if (child == 0) {
		unsigned long vdso_size = PAGE_SIZE;
		unsigned long auxval;
		int ret = -1;

		auxval = FUNC3(AT_SYSINFO_EHDR);
		FUNC4("\tAT_SYSINFO_EHDR is %#lx\n", auxval);
		if (!auxval || auxval == -ENOENT) {
			FUNC4("[WARN]\tgetauxval failed\n");
			return 0;
		}

		/* Simpler than parsing ELF header */
		while (ret < 0) {
			ret = FUNC6((void *)auxval, vdso_size);
			vdso_size += PAGE_SIZE;
		}

#ifdef __i386__
		/* Glibc is likely to explode now - exit with raw syscall */
		asm volatile ("int $0x80" : : "a" (__NR_exit), "b" (!!ret));
#else /* __x86_64__ */
		FUNC5(SYS_exit, ret);
#endif
	} else {
		int status;

		if (FUNC7(child, &status, 0) != child ||
			!FUNC1(status)) {
			FUNC4("[FAIL]\tmremap() of the vDSO does not work on this kernel!\n");
			return 1;
		} else if (FUNC0(status) != 0) {
			FUNC4("[FAIL]\tChild failed with %d\n",
					FUNC0(status));
			return 1;
		}
		FUNC4("[OK]\n");
	}

	return 0;
}