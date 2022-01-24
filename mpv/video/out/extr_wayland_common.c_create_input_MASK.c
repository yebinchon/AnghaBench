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
struct vo_wayland_state {int /*<<< orphan*/  xkb_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo_wayland_state*,char*) ; 
 int /*<<< orphan*/  XKB_CONTEXT_NO_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct vo_wayland_state *wl)
{
    wl->xkb_context = FUNC1(XKB_CONTEXT_NO_FLAGS);

    if (!wl->xkb_context) {
        FUNC0(wl, "failed to initialize input: check xkbcommon\n");
        return 1;
    }

    return 0;
}