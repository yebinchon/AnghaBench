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
struct vt_switcher {int /*<<< orphan*/  tty_fd; } ;
struct vt_mode {int /*<<< orphan*/  mode; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACQUIRE_SIGNAL ; 
 int /*<<< orphan*/  FUNC0 (struct vt_switcher*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELEASE_SIGNAL ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  VT_AUTO ; 
 int /*<<< orphan*/  VT_SETMODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vt_mode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * vt_switcher_pipe ; 

void FUNC5(struct vt_switcher *s)
{
    struct vt_mode vt_mode = {0};
    vt_mode.mode = VT_AUTO;
    if (FUNC3(s->tty_fd, VT_SETMODE, &vt_mode) < 0) {
        FUNC0(s, "VT_SETMODE failed: %s\n", FUNC4(errno));
        return;
    }

    FUNC2(RELEASE_SIGNAL, SIG_DFL);
    FUNC2(ACQUIRE_SIGNAL, SIG_DFL);
    FUNC1(s->tty_fd);
    FUNC1(vt_switcher_pipe[0]);
    FUNC1(vt_switcher_pipe[1]);
}