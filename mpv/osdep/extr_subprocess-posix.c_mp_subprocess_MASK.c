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
typedef  int /*<<< orphan*/  (* subprocess_read_cb ) (void*,char*,scalar_t__) ;
struct pollfd {int fd; scalar_t__ revents; int /*<<< orphan*/  events; } ;
struct mp_cancel {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  posix_spawn_file_actions_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (struct pollfd*) ; 
 int MP_SUBPROCESS_EKILLED_BY_US ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SIGKILL ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  environ ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mp_cancel*) ; 
 scalar_t__ FUNC6 (int*) ; 
 int FUNC7 (char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int,char*,int) ; 
 scalar_t__ FUNC13 (struct pollfd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (void*,char*,scalar_t__) ; 
 scalar_t__ FUNC15 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC16(char **args, struct mp_cancel *cancel, void *ctx,
                  subprocess_read_cb on_stdout, subprocess_read_cb on_stderr,
                  char **error)
{
    posix_spawn_file_actions_t fa;
    bool fa_destroy = false;
    int status = -1;
    int p_stdout[2] = {-1, -1};
    int p_stderr[2] = {-1, -1};
    int devnull = -1;
    pid_t pid = -1;
    bool spawned = false;
    bool killed_by_us = false;

    if (on_stdout && FUNC6(p_stdout) < 0)
        goto done;
    if (on_stderr && FUNC6(p_stderr) < 0)
        goto done;

    devnull = FUNC7("/dev/null", O_RDONLY | O_CLOEXEC);
    if (devnull < 0)
        goto done;

    if (FUNC10(&fa))
        goto done;
    fa_destroy = true;
    // redirect stdin/stdout/stderr
    if (FUNC8(&fa, devnull, 0))
        goto done;
    if (p_stdout[1] >= 0 && FUNC8(&fa, p_stdout[1], 1))
        goto done;
    if (p_stderr[1] >= 0 && FUNC8(&fa, p_stderr[1], 2))
        goto done;

    if (FUNC11(&pid, args[0], &fa, NULL, args, environ)) {
        pid = -1;
        goto done;
    }
    spawned = true;

    FUNC1(p_stdout[1]);
    FUNC1(p_stderr[1]);
    FUNC1(devnull);

    int *read_fds[2] = {&p_stdout[0], &p_stderr[0]};
    subprocess_read_cb read_cbs[2] = {on_stdout, on_stderr};

    while (p_stdout[0] >= 0 || p_stderr[0] >= 0) {
        struct pollfd fds[] = {
            {.events = POLLIN, .fd = *read_fds[0]},
            {.events = POLLIN, .fd = *read_fds[1]},
            {.events = POLLIN, .fd = cancel ? FUNC5(cancel) : -1},
        };
        if (FUNC13(fds, FUNC0(fds), -1) < 0 && errno != EINTR)
            break;
        for (int n = 0; n < 2; n++) {
            if (fds[n].revents) {
                char buf[4096];
                ssize_t r = FUNC12(*read_fds[n], buf, sizeof(buf));
                if (r < 0 && errno == EINTR)
                    continue;
                if (r > 0 && read_cbs[n])
                    read_cbs[n](ctx, buf, r);
                if (r <= 0)
                    FUNC1(*read_fds[n]);
            }
        }
        if (fds[2].revents) {
            FUNC4(pid, SIGKILL);
            killed_by_us = true;
            break;
        }
    }

    // Note: it can happen that a child process closes the pipe, but does not
    //       terminate yet. In this case, we would have to run waitpid() in
    //       a separate thread and use pthread_cancel(), or use other weird
    //       and laborious tricks. So this isn't handled yet.
    while (FUNC15(pid, &status, 0) < 0 && errno == EINTR) {}

done:
    if (fa_destroy)
        FUNC9(&fa);
    FUNC1(p_stdout[0]);
    FUNC1(p_stdout[1]);
    FUNC1(p_stderr[0]);
    FUNC1(p_stderr[1]);
    FUNC1(devnull);

    if (!spawned || (FUNC3(status) && FUNC2(status) == 127)) {
        *error = "init";
        status = -1;
    } else if (FUNC3(status)) {
        *error = NULL;
        status = FUNC2(status);
    } else {
        *error = "killed";
        status = killed_by_us ? MP_SUBPROCESS_EKILLED_BY_US : -1;
    }

    return status;
}