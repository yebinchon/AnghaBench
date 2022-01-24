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
 int CLONE_SIGHAND ; 
 int CLONE_THREAD ; 
 int CLONE_VM ; 
 int MAP_ANONYMOUS ; 
 void* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  (*) (void*),void*,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(void)
{
	const int PAGE_SIZE = FUNC5(_SC_PAGESIZE);
	pid_t pid;
	void *stack;

	/* main thread */
	FUNC2((void *)0);

	stack = FUNC3(NULL, 2 * PAGE_SIZE, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
	FUNC0(stack != MAP_FAILED);
	/* side thread */
	pid = FUNC1(f, stack + PAGE_SIZE, CLONE_THREAD|CLONE_SIGHAND|CLONE_VM, (void *)1);
	FUNC0(pid > 0);
	FUNC4();

	return 0;
}