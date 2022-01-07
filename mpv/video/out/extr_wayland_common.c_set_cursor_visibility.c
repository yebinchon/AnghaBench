
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_cursor_image {int hotspot_x; int hotspot_y; int height; int width; } ;
struct wl_buffer {int dummy; } ;
struct vo_wayland_state {int cursor_visible; int scaling; int pointer_id; int pointer; int * cursor_surface; TYPE_1__* default_cursor; } ;
struct TYPE_2__ {struct wl_cursor_image** images; } ;


 int VO_FALSE ;
 int VO_NOTAVAIL ;
 int VO_TRUE ;
 scalar_t__ spawn_cursor (struct vo_wayland_state*) ;
 struct wl_buffer* wl_cursor_image_get_buffer (struct wl_cursor_image*) ;
 int wl_pointer_set_cursor (int ,int ,int *,int,int) ;
 int wl_surface_attach (int *,struct wl_buffer*,int ,int ) ;
 int wl_surface_commit (int *) ;
 int wl_surface_damage (int *,int ,int ,int ,int ) ;
 int wl_surface_set_buffer_scale (int *,int) ;

__attribute__((used)) static int set_cursor_visibility(struct vo_wayland_state *wl, bool on)
{
    if (!wl->pointer)
        return VO_NOTAVAIL;
    wl->cursor_visible = on;
    if (on) {
        if (spawn_cursor(wl))
            return VO_FALSE;
        struct wl_cursor_image *img = wl->default_cursor->images[0];
        struct wl_buffer *buffer = wl_cursor_image_get_buffer(img);
        if (!buffer)
            return VO_FALSE;
        wl_pointer_set_cursor(wl->pointer, wl->pointer_id, wl->cursor_surface,
                              img->hotspot_x/wl->scaling, img->hotspot_y/wl->scaling);
        wl_surface_set_buffer_scale(wl->cursor_surface, wl->scaling);
        wl_surface_attach(wl->cursor_surface, buffer, 0, 0);
        wl_surface_damage(wl->cursor_surface, 0, 0, img->width, img->height);
        wl_surface_commit(wl->cursor_surface);
    } else {
        wl_pointer_set_cursor(wl->pointer, wl->pointer_id, ((void*)0), 0, 0);
    }
    return VO_TRUE;
}
