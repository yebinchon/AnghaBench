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
struct TYPE_2__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct event*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct event*) ; 
 int /*<<< orphan*/  FUNC5 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct event*) ; 
 int FUNC7 (struct event*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (union pipe,union pipe) ; 
 int /*<<< orphan*/  FUNC12 (union pipe,union pipe) ; 
 int FUNC13 (scalar_t__) ; 

int FUNC14(void)
{
	union pipe read_pipe, write_pipe;
	struct event event;
	pid_t pid;

	FUNC1(!FUNC3());

	FUNC0(FUNC10(read_pipe.fds) == -1);
	FUNC0(FUNC10(write_pipe.fds) == -1);

	pid = FUNC9();
	if (pid == 0) {
		/* NB order of pipes looks reversed */
		FUNC8(FUNC12(write_pipe, read_pipe));
	}

	FUNC0(FUNC11(read_pipe, write_pipe));

	/* Child is running now */

	FUNC5(&event, 0x1001e, "cycles");
	FUNC6(&event);

	event.attr.exclude_kernel = 1;
	event.attr.exclude_hv = 1;
	event.attr.exclude_idle = 1;

	FUNC0(FUNC7(&event, pid));
	FUNC0(FUNC2(&event));

	FUNC0(FUNC11(read_pipe, write_pipe));

	/* Child should just exit happily */
	FUNC0(FUNC13(pid));

	FUNC4(&event);

	return 0;
}