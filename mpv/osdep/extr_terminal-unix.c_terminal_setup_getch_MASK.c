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
struct input_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_RESETHAND ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  death_pipe ; 
 int /*<<< orphan*/  getch2_enabled ; 
 struct input_ctx* input_ctx ; 
 int /*<<< orphan*/  input_thread ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  quit_request_sighandler ; 
 int read_terminal ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  terminal_thread ; 
 int /*<<< orphan*/  tty_in ; 

void FUNC6(struct input_ctx *ictx)
{
    if (!getch2_enabled || input_ctx)
        return;

    if (FUNC3(death_pipe) < 0)
        return;

    // Disable reading from the terminal even if stdout is not a tty, to make
    //   mpv ... | less
    // do the right thing.
    read_terminal = FUNC2(tty_in) && FUNC2(STDOUT_FILENO);

    input_ctx = ictx;

    if (FUNC4(&input_thread, NULL, terminal_thread, NULL)) {
        input_ctx = NULL;
        FUNC0();
        FUNC1();
        return;
    }

    FUNC5(SIGINT,  quit_request_sighandler, SA_RESETHAND, false);
    FUNC5(SIGQUIT, quit_request_sighandler, SA_RESETHAND, false);
    FUNC5(SIGTERM, quit_request_sighandler, SA_RESETHAND, false);
}