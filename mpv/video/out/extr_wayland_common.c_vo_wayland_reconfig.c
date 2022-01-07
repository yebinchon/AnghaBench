
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl_output {int dummy; } ;
struct vo_win_geometry {int dummy; } ;
struct TYPE_3__ {int x1; int y1; scalar_t__ y0; scalar_t__ x0; } ;
struct vo_wayland_state {int scaling; int configured; float aspect_ratio; int display; int pending_vo_events; int surface; int xdg_toplevel; struct vo_wayland_output* current_output; TYPE_1__ geometry; scalar_t__ fullscreen; TYPE_1__ window_size; int maximized; } ;
struct mp_rect {int member_0; } ;
struct vo_wayland_output {int scale; struct mp_rect geometry; struct wl_output* output; } ;
struct vo {int dwidth; int dheight; TYPE_2__* opts; struct vo_wayland_state* wl; } ;
struct TYPE_4__ {int fsscreen_id; scalar_t__ fullscreen; int hidpi_window_scale; } ;


 int MP_ERR (struct vo_wayland_state*,char*,int) ;
 int MP_VERBOSE (struct vo_wayland_state*,char*) ;
 int VO_EVENT_RESIZE ;
 struct vo_wayland_output* find_output (struct vo_wayland_state*,int) ;
 int mp_rect_h (struct mp_rect) ;
 int mp_rect_w (struct mp_rect) ;
 scalar_t__ spawn_cursor (struct vo_wayland_state*) ;
 int vo_apply_window_geometry (struct vo*,struct vo_win_geometry*) ;
 int vo_calc_window_geometry (struct vo*,struct mp_rect*,struct vo_win_geometry*) ;
 int wl_display_roundtrip (int ) ;
 int wl_surface_commit (int ) ;
 int wl_surface_set_buffer_scale (int ,int) ;
 int xdg_toplevel_set_fullscreen (int ,struct wl_output*) ;

int vo_wayland_reconfig(struct vo *vo)
{
    struct wl_output *wl_out = ((void*)0);
    struct mp_rect screenrc = { 0 };
    struct vo_wayland_state *wl = vo->wl;

    MP_VERBOSE(wl, "Reconfiguring!\n");

    if (!wl->current_output) {
        int idx = 0;
        if (vo->opts->fullscreen && (vo->opts->fsscreen_id >= 0))
            idx = vo->opts->fsscreen_id;
        struct vo_wayland_output *out = find_output(wl, idx);
        if (!out) {
            MP_ERR(wl, "Screen index %i not found/unavailable!\n", idx);
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
    vo_calc_window_geometry(vo, &screenrc, &geo);
    vo_apply_window_geometry(vo, &geo);

    if (!wl->configured || !wl->maximized) {
        wl->geometry.x0 = 0;
        wl->geometry.y0 = 0;
        wl->geometry.x1 = vo->dwidth / wl->scaling;
        wl->geometry.y1 = vo->dheight / wl->scaling;
        wl->window_size = wl->geometry;
    }

    wl->aspect_ratio = vo->dwidth / (float)vo->dheight;

    if (vo->opts->fullscreen) {

        if (wl->fullscreen && wl->current_output) {
            wl->geometry.x0 = 0;
            wl->geometry.y0 = 0;
            wl->geometry.x1 = mp_rect_w(wl->current_output->geometry)/wl->scaling;
            wl->geometry.y1 = mp_rect_h(wl->current_output->geometry)/wl->scaling;
        } else {
            if (vo->opts->fsscreen_id < 0) {
                xdg_toplevel_set_fullscreen(wl->xdg_toplevel, ((void*)0));
            } else {
                xdg_toplevel_set_fullscreen(wl->xdg_toplevel, wl_out);
            }
        }
    }

    wl_surface_set_buffer_scale(wl->surface, wl->scaling);
    wl_surface_commit(wl->surface);
    wl->pending_vo_events |= VO_EVENT_RESIZE;
    if (!wl->configured) {
        if (spawn_cursor(wl))
            return 0;
        wl_display_roundtrip(wl->display);
        wl->configured = 1;
    }

    return 1;
}
