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
struct vo_wayland_state {int user_sbc; int frame_wait; scalar_t__ presentation; TYPE_2__* opts; int /*<<< orphan*/  feedback; int /*<<< orphan*/  surface; } ;
struct ra_ctx {TYPE_1__* vo; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  egl_surface; int /*<<< orphan*/  egl_display; } ;
struct TYPE_4__ {int /*<<< orphan*/  frame_offset; int /*<<< orphan*/  disable_vsync; } ;
struct TYPE_3__ {struct vo_wayland_state* wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  feedback_listener ; 
 int FUNC1 (struct vo_wayland_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct vo_wayland_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo_wayland_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vo_wayland_state*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vo_wayland_state*) ; 

__attribute__((used)) static void FUNC7(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo_wayland_state *wl = ctx->vo->wl;

    if (wl->presentation) {
        wl->feedback = FUNC5(wl->presentation, wl->surface);
        FUNC6(wl->feedback, &feedback_listener, wl);
        wl->user_sbc += 1;
        int index = FUNC1(wl);
        if (index < 0)
            FUNC2(wl);
    }

    FUNC0(p->egl_display, p->egl_surface);
    if (!wl->opts->disable_vsync)
        FUNC3(wl, wl->opts->frame_offset);

    if (wl->presentation)
        FUNC4(wl);

    wl->frame_wait = true;
}