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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  tty_out ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(bool enable)
{
    // This check is actually always true, as enable_kx calls are all guarded
    // by read_terminal, which is true only if both stdin and stdout are a
    // tty. Note that stderr being redirected away has no influence over mpv's
    // I/O handling except for disabling the terminal OSD, and thus stderr
    // shouldn't be relied on here either.
    if (FUNC0(tty_out)) {
        char *cmd = enable ? "\033=" : "\033>";
        (void)FUNC2(tty_out, cmd, FUNC1(cmd));
    }
}