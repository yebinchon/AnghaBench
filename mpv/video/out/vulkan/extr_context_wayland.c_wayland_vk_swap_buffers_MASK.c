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
struct vo_wayland_state {int user_sbc; int frame_wait; scalar_t__ presentation; TYPE_1__* opts; int /*<<< orphan*/  feedback; int /*<<< orphan*/  surface; } ;
struct ra_ctx {TYPE_2__* vo; } ;
struct TYPE_4__ {struct vo_wayland_state* wl; } ;
struct TYPE_3__ {int /*<<< orphan*/  frame_offset; int /*<<< orphan*/  disable_vsync; } ;

/* Variables and functions */
 int /*<<< orphan*/  feedback_listener ; 
 int FUNC0 (struct vo_wayland_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo_wayland_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct vo_wayland_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vo_wayland_state*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vo_wayland_state*) ; 

__attribute__((used)) static void FUNC6(struct ra_ctx *ctx)
{
    struct vo_wayland_state *wl = ctx->vo->wl;

    if (wl->presentation) {
        wl->feedback = FUNC4(wl->presentation, wl->surface);
        FUNC5(wl->feedback, &feedback_listener, wl);
        wl->user_sbc += 1;
        int index = FUNC0(wl);
        if (index < 0)
            FUNC1(wl);
    }

    if (!wl->opts->disable_vsync)
        FUNC2(wl, wl->opts->frame_offset);

    if (wl->presentation)
        FUNC3(wl);

    wl->frame_wait = true;
}