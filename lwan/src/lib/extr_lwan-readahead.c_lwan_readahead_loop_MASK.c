#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  off; int /*<<< orphan*/  fd; } ;
struct lwan_readahead_cmd {int cmd; TYPE_2__ madvise; TYPE_1__ readahead; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  IOPRIO_CLASS_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IOPRIO_WHO_PROCESS ; 
#define  MADVISE 130 
 int /*<<< orphan*/  MADV_WILLNEED ; 
#define  READAHEAD 129 
#define  SHUTDOWN 128 
 scalar_t__ FUNC1 (size_t) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ,struct lwan_readahead_cmd*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * readahead_pipe_fd ; 

__attribute__((used)) static void *FUNC10(void *data __attribute__((unused)))
{
    /* Idle priority for the calling thread.   Magic value of `7` obtained from
     * sample program in linux/Documentation/block/ioprio.txt.  This is a no-op
     * on anything but Linux.  */
    FUNC2(IOPRIO_WHO_PROCESS, 0, FUNC0(IOPRIO_CLASS_IDLE, 7));

    FUNC3("readahead");

    while (true) {
        struct lwan_readahead_cmd cmd[16];
        ssize_t n_bytes = FUNC8(readahead_pipe_fd[0], cmd, sizeof(cmd));
        ssize_t cmds;

        if (FUNC1(n_bytes < 0)) {
            if (errno == EAGAIN || errno == EINTR)
                continue;
            FUNC4("Ignoring error while reading from pipe (%d)",
                               readahead_pipe_fd[0]);
            continue;
#if PIPE_DIRECT_FLAG
        } else if (UNLIKELY(n_bytes % (ssize_t)sizeof(cmd[0]))) {
            lwan_status_warning("Ignoring readahead packet read of %zd bytes",
                                n_bytes);
            continue;
#endif
        }

        cmds = n_bytes / (ssize_t)sizeof(struct lwan_readahead_cmd);
        for (ssize_t i = 0; i < cmds; i++) {
            switch (cmd[i].cmd) {
            case READAHEAD:
                FUNC9(cmd[i].readahead.fd, cmd[i].readahead.off,
                          cmd[i].readahead.size);
                break;
            case MADVISE:
                FUNC6(cmd[i].madvise.addr, cmd[i].madvise.length,
                        MADV_WILLNEED);
                FUNC7(cmd[i].madvise.addr, cmd[i].madvise.length);
                break;
            case SHUTDOWN:
                goto out;
            }
        }
    }

out:
    return NULL;
}