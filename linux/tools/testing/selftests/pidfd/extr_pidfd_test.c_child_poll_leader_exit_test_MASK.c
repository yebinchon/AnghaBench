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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_exit ; 
 int /*<<< orphan*/  SYS_gettid ; 
 int /*<<< orphan*/ * child_exit_secs ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  test_pidfd_poll_leader_exit_thread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *args)
{
	pthread_t t1, t2;

	FUNC1("Child: starting. pid %d tid %d\n", FUNC0(), FUNC3(SYS_gettid));
	FUNC2(&t1, NULL, test_pidfd_poll_leader_exit_thread, NULL);
	FUNC2(&t2, NULL, test_pidfd_poll_leader_exit_thread, NULL);

	/*
	 * glibc exit calls exit_group syscall, so explicity call exit only
	 * so that only the group leader exits, leaving the threads alone.
	 */
	*child_exit_secs = FUNC4(NULL);
	FUNC3(SYS_exit, 0);
}