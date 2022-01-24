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
struct pollfd {scalar_t__ revents; int /*<<< orphan*/  fd; int /*<<< orphan*/  events; } ;
struct mp_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * death_pipe ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  input_ctx ; 
 struct mp_cmd* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mp_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct pollfd*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int read_terminal ; 
 int /*<<< orphan*/  tty_in ; 

__attribute__((used)) static void *FUNC8(void *ptr)
{
    FUNC5("terminal");
    bool stdin_ok = read_terminal; // if false, we still wait for SIGTERM
    while (1) {
        FUNC2();
        struct pollfd fds[2] = {
            { .events = POLLIN, .fd = death_pipe[0] },
            { .events = POLLIN, .fd = tty_in }
        };
        FUNC6(fds, stdin_ok ? 2 : 1, -1);
        if (fds[0].revents)
            break;
        if (fds[1].revents) {
            if (!FUNC1(input_ctx))
                break;
        }
    }
    char c;
    bool quit = FUNC7(death_pipe[0], &c, 1) == 1 && c == 1;
    // Important if we received SIGTERM, rather than regular quit.
    if (quit) {
        struct mp_cmd *cmd = FUNC3(input_ctx, FUNC0("quit 4"), "");
        if (cmd)
            FUNC4(input_ctx, cmd);
    }
    return NULL;
}