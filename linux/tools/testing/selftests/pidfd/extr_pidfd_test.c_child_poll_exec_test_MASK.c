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
 int /*<<< orphan*/  SYS_gettid ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_pidfd_poll_exec_thread ; 

__attribute__((used)) static int FUNC5(void *args)
{
	pthread_t t1;

	FUNC1("Child (pidfd): starting. pid %d tid %d\n", FUNC0(),
			FUNC4(SYS_gettid));
	FUNC2(&t1, NULL, test_pidfd_poll_exec_thread, NULL);
	/*
	 * Exec in the non-leader thread will destroy the leader immediately.
	 * If the wait in the parent returns too soon, the test fails.
	 */
	while (1)
		FUNC3(1);
}