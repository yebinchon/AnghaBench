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
 int ATM_EXIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  allocator_thread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  internal_ips_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * req_pipefd ; 
 int /*<<< orphan*/ * resp_pipefd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int const*,int) ; 

void FUNC5(void) {
	FUNC1();
	const int msg = ATM_EXIT;
	FUNC4(req_pipefd[1], &msg, sizeof(int));
	FUNC3(allocator_thread, NULL);
	FUNC2(req_pipefd[0]);
	FUNC2(req_pipefd[1]);
	FUNC2(resp_pipefd[0]);
	FUNC2(resp_pipefd[1]);
	FUNC0(internal_ips_lock);
}