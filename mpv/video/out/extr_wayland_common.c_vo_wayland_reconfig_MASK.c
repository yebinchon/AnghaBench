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
struct wl_output {int dummy; } ;
struct vo_win_geometry {int dummy; } ;
struct TYPE_3__ {int x1; int y1; scalar_t__ y0; scalar_t__ x0; } ;
struct vo_wayland_state {int scaling; int configured; float aspect_ratio; int /*<<< orphan*/  display; int /*<<< orphan*/  pending_vo_events; int /*<<< orphan*/  surface; int /*<<< orphan*/  xdg_toplevel; struct vo_wayland_output* current_output; TYPE_1__ geometry; scalar_t__ fullscreen; TYPE_1__ window_size; int /*<<< orphan*/  maximized; } ;
struct mp_rect {int /*<<< orphan*/  member_0; } ;
struct vo_wayland_output {int scale; struct mp_rect geometry; struct wl_output* output; } ;
struct vo {int dwidth; int dheight; TYPE_2__* opts; struct vo_wayland_state* wl; } ;
struct TYPE_4__ {int fsscreen_id; scalar_t__ fullscreen; int /*<<< orphan*/  hidpi_window_scale; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo_wayland_state*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vo_wayland_state*,char*) ; 
 int /*<<< orphan*/  VO_EVENT_RESIZE ; 
 struct vo_wayland_output* FUNC2 (struct vo_wayland_state*,int) ; 
 int FUNC3 (struct mp_rect) ; 
 int FUNC4 (struct mp_rect) ; 
 scalar_t__ FUNC5 (struct vo_wayland_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct vo*,struct vo_win_geometry*) ; 
 int /*<<< orphan*/  FUNC7 (struct vo*,struct mp_rect*,struct vo_win_geometry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct wl_output*) ; 

int FUNC12(struct vo *vo)
{
    struct wl_output *wl_out = NULL;
    struct mp_rect screenrc = { 0 };
    struct vo_wayland_state *wl = vo->wl;

    FUNC1(wl, "Reconfiguring!\n");

    if (!wl->current_output) {
        int idx = 0;
        if (vo->opts->fullscreen && (vo->opts->fsscreen_id >= 0))
            idx = vo->opts->fsscreen_id;
        struct vo_wayland_output *out = FUNC2(wl, idx);
        if (!out) {
            FUNC0(wl, "Screen index %i not found/unavailable!\n", idx);
        } else {
            wl_out = out->output;
            wl->current_output = out;
            if (!vo->opts->hidpi_window_scale)
                out->scale = 1;
            wl->scaling = out->scale;
            screenrc = wl->current_output->geometry;
        }
    }

    struct vo_win_geometry geo;
    FUNC7(vo, &screenrc, &geo);
    FUNC6(vo, &geo);

    if (!wl->configured || !wl->maximized) {
        wl->geometry.x0 = 0;
        wl->geometry.y0 = 0;
        wl->geometry.x1 = vo->dwidth  / wl->scaling;
        wl->geometry.y1 = vo->dheight / wl->scaling;
        wl->window_size = wl->geometry;
    }

    wl->aspect_ratio = vo->dwidth / (float)vo->dheight;

    if (vo->opts->fullscreen) {
        /* If already fullscreen, fix resolution for the frame size change */
        if (wl->fullscreen && wl->current_output) {
            wl->geometry.x0  = 0;
            wl->geometry.y0  = 0;
            wl->geometry.x1  = FUNC4(wl->current_output->geometry)/wl->scaling;
            wl->geometry.y1  = FUNC3(wl->current_output->geometry)/wl->scaling;
        } else {
            if (vo->opts->fsscreen_id < 0) {
                FUNC11(wl->xdg_toplevel, NULL);
            } else {
                FUNC11(wl->xdg_toplevel, wl_out);
            }
        }
    }

    FUNC10(wl->surface, wl->scaling);
    FUNC9(wl->surface);
    wl->pending_vo_events |= VO_EVENT_RESIZE;
    if (!wl->configured) {
        if (FUNC5(wl))
            return false;
        FUNC8(wl->display);
        wl->configured = true;
    }

    return true;
}