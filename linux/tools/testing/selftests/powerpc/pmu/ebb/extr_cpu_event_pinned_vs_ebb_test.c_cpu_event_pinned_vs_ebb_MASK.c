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
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (union pipe,union pipe) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct event*) ; 
 int FUNC6 (struct event*) ; 
 int /*<<< orphan*/  FUNC7 (struct event*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct event*,int) ; 
 int FUNC14 (union pipe,union pipe) ; 
 int FUNC15 (scalar_t__) ; 

int FUNC16(void)
{
	union pipe read_pipe, write_pipe;
	struct event event;
	int cpu, rc;
	pid_t pid;

	FUNC1(!FUNC4());

	cpu = FUNC11();
	FUNC0(cpu < 0);
	FUNC0(FUNC2(cpu));

	FUNC0(FUNC12(read_pipe.fds) == -1);
	FUNC0(FUNC12(write_pipe.fds) == -1);

	pid = FUNC9();
	if (pid == 0) {
		/* NB order of pipes looks reversed */
		FUNC8(FUNC3(write_pipe, read_pipe));
	}

	/* We setup the cpu event first */
	rc = FUNC13(&event, cpu);
	if (rc) {
		FUNC10(pid);
		return rc;
	}

	/* Signal the child to install its EBB event and wait */
	if (FUNC14(read_pipe, write_pipe))
		/* If it fails, wait for it to exit */
		goto wait;

	/* Signal the child to run */
	FUNC0(FUNC14(read_pipe, write_pipe));

wait:
	/* We expect it to fail to read the event */
	FUNC0(FUNC15(pid) != 2);

	FUNC0(FUNC5(&event));
	FUNC0(FUNC6(&event));

	FUNC7(&event);

	/* The cpu event should have run */
	FUNC0(event.result.value == 0);
	FUNC0(event.result.enabled != event.result.running);

	return 0;
}