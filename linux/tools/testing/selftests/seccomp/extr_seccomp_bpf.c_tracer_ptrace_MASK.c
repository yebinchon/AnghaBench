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
struct __test_metadata {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  PTRACE_EVENTMSG_SYSCALL_ENTRY ; 
 int /*<<< orphan*/  PTRACE_EVENTMSG_SYSCALL_EXIT ; 
 int /*<<< orphan*/  PTRACE_GETEVENTMSG ; 
 int __NR_getpid ; 
 int __NR_getppid ; 
 int __NR_gettid ; 
 int __NR_openat ; 
 int /*<<< orphan*/  FUNC1 (struct __test_metadata*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct __test_metadata*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long*) ; 

void FUNC4(struct __test_metadata *_metadata, pid_t tracee,
		   int status, void *args)
{
	int ret, nr;
	unsigned long msg;
	static bool entry;

	/*
	 * The traditional way to tell PTRACE_SYSCALL entry/exit
	 * is by counting.
	 */
	entry = !entry;

	/* Make sure we got an appropriate message. */
	ret = FUNC3(PTRACE_GETEVENTMSG, tracee, NULL, &msg);
	FUNC0(0, ret);
	FUNC0(entry ? PTRACE_EVENTMSG_SYSCALL_ENTRY
			: PTRACE_EVENTMSG_SYSCALL_EXIT, msg);

	if (!entry)
		return;

	nr = FUNC2(_metadata, tracee);

	if (nr == __NR_getpid)
		FUNC1(_metadata, tracee, __NR_getppid, 0);
	if (nr == __NR_gettid)
		FUNC1(_metadata, tracee, -1, 45000);
	if (nr == __NR_openat)
		FUNC1(_metadata, tracee, -1, -ESRCH);
}