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
struct lwan_readahead_cmd {int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* readahead_pipe_fd ; 
 int /*<<< orphan*/  readahead_self ; 
 int /*<<< orphan*/  FUNC3 (int,struct lwan_readahead_cmd*,int) ; 

void FUNC4(void)
{
    struct lwan_readahead_cmd cmd = {
        .cmd = SHUTDOWN,
    };

    if (readahead_pipe_fd[0] == readahead_pipe_fd[1] &&
        readahead_pipe_fd[0] == -1)
        return;

    FUNC1("Shutting down readahead thread");

    FUNC3(readahead_pipe_fd[1], &cmd, sizeof(cmd));
    FUNC2(readahead_self, NULL);

    FUNC0(readahead_pipe_fd[0]);
    FUNC0(readahead_pipe_fd[1]);
    readahead_pipe_fd[0] = readahead_pipe_fd[1] = -1;
}