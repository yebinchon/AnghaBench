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
typedef  int /*<<< orphan*/  pipename ;
typedef  scalar_t__ pid_t ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  PIPE_ACCESS_DUPLEX ; 
 int PIPE_READMODE_MESSAGE ; 
 int PIPE_TYPE_MESSAGE ; 
 int /*<<< orphan*/  PIPE_UNLIMITED_INSTANCES ; 
 int PIPE_WAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

HANDLE
FUNC5(pid_t pid)
{
	char		pipename[128];
	HANDLE		pipe;

	FUNC4(pipename, sizeof(pipename), "\\\\.\\pipe\\pgsignal_%u", (int) pid);

	pipe = FUNC0(pipename, PIPE_ACCESS_DUPLEX,
						   PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE | PIPE_WAIT,
						   PIPE_UNLIMITED_INSTANCES, 16, 16, 1000, NULL);

	if (pipe == INVALID_HANDLE_VALUE)
		FUNC2(ERROR,
				(FUNC3("could not create signal listener pipe for PID %d: error code %lu",
						(int) pid, FUNC1())));

	return pipe;
}