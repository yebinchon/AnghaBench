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
union pipe {int /*<<< orphan*/  fds; } ;
struct TYPE_2__ {scalar_t__ value; scalar_t__ enabled; scalar_t__ running; } ;
struct event {TYPE_1__ result; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (union pipe,union pipe) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct event*) ; 
 int FUNC5 (struct event*) ; 
 int /*<<< orphan*/  FUNC6 (struct event*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct event*,scalar_t__) ; 
 int FUNC12 (union pipe,union pipe) ; 
 int FUNC13 (scalar_t__) ; 

int FUNC14(void)
{
	union pipe read_pipe, write_pipe;
	struct event event;
	pid_t pid;
	int rc;

	FUNC1(!FUNC3());

	FUNC0(FUNC10(read_pipe.fds) == -1);
	FUNC0(FUNC10(write_pipe.fds) == -1);

	pid = FUNC8();
	if (pid == 0) {
		/* NB order of pipes looks reversed */
		FUNC7(FUNC2(write_pipe, read_pipe));
	}

	/* We setup the task event first */
	rc = FUNC11(&event, pid);
	if (rc) {
		FUNC9(pid);
		return rc;
	}

	/* Signal the child to install its EBB event and wait */
	if (FUNC12(read_pipe, write_pipe))
		/* If it fails, wait for it to exit */
		goto wait;

	/* Signal the child to run */
	FUNC0(FUNC12(read_pipe, write_pipe));

wait:
	/* We expect it to fail to read the event */
	FUNC0(FUNC13(pid) != 2);
	FUNC0(FUNC4(&event));
	FUNC0(FUNC5(&event));

	FUNC6(&event);

	FUNC0(event.result.value == 0);
	/*
	 * For reasons I don't understand enabled is usually just slightly
	 * lower than running. Would be good to confirm why.
	 */
	FUNC0(event.result.enabled == 0);
	FUNC0(event.result.running == 0);

	return 0;
}