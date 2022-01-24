#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pid_t ;
struct TYPE_2__ {int jobs; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int WAIT_FAILED ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 int WAIT_TIMEOUT ; 
 int /*<<< orphan*/  WNOHANG ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void** cur_thread_args ; 
 int /*<<< orphan*/  errno ; 
 int parallel_jobs ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * thread_handles ; 
 TYPE_1__ user_opts ; 
 scalar_t__ FUNC5 (int,int*,int /*<<< orphan*/ ) ; 

bool
FUNC6(bool wait_for_child)
{
#ifndef WIN32
	int			work_status;
	pid_t		child;
#else
	int			thread_num;
	DWORD		res;
#endif

	if (user_opts.jobs <= 1 || parallel_jobs == 0)
		return false;

#ifndef WIN32
	child = FUNC5(-1, &work_status, wait_for_child ? 0 : WNOHANG);
	if (child == (pid_t) -1)
		FUNC3("waitpid() failed: %s\n", FUNC4(errno));
	if (child == 0)
		return false;			/* no children, or no dead children */
	if (work_status != 0)
		FUNC3("child process exited abnormally: status %d\n", work_status);
#else
	/* wait for one to finish */
	thread_num = WaitForMultipleObjects(parallel_jobs, thread_handles,
										false, wait_for_child ? INFINITE : 0);

	if (thread_num == WAIT_TIMEOUT || thread_num == WAIT_FAILED)
		return false;

	/* compute thread index in active_threads */
	thread_num -= WAIT_OBJECT_0;

	/* get the result */
	GetExitCodeThread(thread_handles[thread_num], &res);
	if (res != 0)
		pg_fatal("child worker exited abnormally: %s\n", strerror(errno));

	/* dispose of handle to stop leaks */
	CloseHandle(thread_handles[thread_num]);

	/* Move last slot into dead child's position */
	if (thread_num != parallel_jobs - 1)
	{
		void	   *tmp_args;

		thread_handles[thread_num] = thread_handles[parallel_jobs - 1];

		/*
		 * Move last active thread arg struct into the now-dead slot, and the
		 * now-dead slot to the end for reuse by the next thread. Though the
		 * thread struct is in use by another thread, we can safely swap the
		 * struct pointers within the array.
		 */
		tmp_args = cur_thread_args[thread_num];
		cur_thread_args[thread_num] = cur_thread_args[parallel_jobs - 1];
		cur_thread_args[parallel_jobs - 1] = tmp_args;
	}
#endif

	/* do this after job has been removed */
	parallel_jobs--;

	return true;
}