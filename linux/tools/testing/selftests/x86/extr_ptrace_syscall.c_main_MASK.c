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
 int /*<<< orphan*/  AT_SYSINFO ; 
 int /*<<< orphan*/  do_full_int80 ; 
 int /*<<< orphan*/  do_full_vsyscall32 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* vsyscall32 ; 

int FUNC5()
{
	FUNC1("[RUN]\tCheck int80 return regs\n");
	FUNC4(do_full_int80);

#if defined(__i386__) && (!defined(__GLIBC__) || __GLIBC__ > 2 || __GLIBC_MINOR__ >= 16)
	vsyscall32 = (void *)getauxval(AT_SYSINFO);
	printf("[RUN]\tCheck AT_SYSINFO return regs\n");
	test_sys32_regs(do_full_vsyscall32);
#endif

	FUNC2();

	FUNC3();

	return 0;
}