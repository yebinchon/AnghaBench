
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_callback {int dummy; } ;
struct vo_wayland_state {int frame_wait; int frame_callback; int surface; } ;


 int frame_listener ;
 int wl_callback_add_listener (int ,int *,struct vo_wayland_state*) ;
 int wl_callback_destroy (struct wl_callback*) ;
 int wl_surface_frame (int ) ;

__attribute__((used)) static void frame_callback(void *data, struct wl_callback *callback, uint32_t time)
{
    struct vo_wayland_state *wl = data;

    if (callback)
        wl_callback_destroy(callback);

    wl->frame_callback = wl_surface_frame(wl->surface);
    wl_callback_add_listener(wl->frame_callback, &frame_listener, wl);
    wl->frame_wait = 0;
}
