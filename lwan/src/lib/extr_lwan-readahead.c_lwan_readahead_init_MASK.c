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
struct sched_param {int /*<<< orphan*/  sched_priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int PIPE_DIRECT_FLAG ; 
 int /*<<< orphan*/  SCHED_IDLE ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  lwan_readahead_loop ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (scalar_t__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 scalar_t__* readahead_pipe_fd ; 
 int /*<<< orphan*/  readahead_self ; 

void FUNC7(void)
{
    int flags;

    if (readahead_pipe_fd[0] != readahead_pipe_fd[1])
        return;

    FUNC2("Initializing low priority readahead thread");

    if (FUNC4(readahead_pipe_fd, O_CLOEXEC | PIPE_DIRECT_FLAG) < 0)
        FUNC1("pipe2");

    /* Only write side should be non-blocking. */
    flags = FUNC0(readahead_pipe_fd[1], F_GETFL);
    if (flags < 0)
        FUNC1("fcntl");
    if (FUNC0(readahead_pipe_fd[1], F_SETFL, flags | O_NONBLOCK) < 0)
        FUNC1("fcntl");

    if (FUNC5(&readahead_self, NULL, lwan_readahead_loop, NULL))
        FUNC1("pthread_create");

#ifdef SCHED_IDLE
    struct sched_param sched_param = {.sched_priority = 0};
    if (pthread_setschedparam(readahead_self, SCHED_IDLE, &sched_param) < 0)
        lwan_status_perror("pthread_setschedparam");
#endif /* SCHED_IDLE */
}