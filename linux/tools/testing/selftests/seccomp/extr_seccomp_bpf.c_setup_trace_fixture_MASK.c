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
typedef  int /*<<< orphan*/  tracer_func_t ;
struct __test_metadata {int dummy; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  PR_SET_PTRACER ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  __NR_exit ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  cont_handler ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct __test_metadata*,int,scalar_t__,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

pid_t FUNC11(struct __test_metadata *_metadata,
			  tracer_func_t func, void *args, bool ptrace_syscall)
{
	char sync;
	int pipefd[2];
	pid_t tracer_pid;
	pid_t tracee = FUNC4();

	/* Setup a pipe for clean synchronization. */
	FUNC0(0, FUNC5(pipefd));

	/* Fork a child which we'll promote to tracer */
	tracer_pid = FUNC3();
	FUNC1(0, tracer_pid);
	FUNC8(SIGALRM, cont_handler);
	if (tracer_pid == 0) {
		FUNC2(pipefd[0]);
		FUNC9(_metadata, pipefd[1], tracee, func, args,
			     ptrace_syscall);
		FUNC10(__NR_exit, 0);
	}
	FUNC2(pipefd[1]);
	FUNC6(PR_SET_PTRACER, tracer_pid, 0, 0, 0);
	FUNC7(pipefd[0], &sync, 1);
	FUNC2(pipefd[0]);

	return tracer_pid;
}