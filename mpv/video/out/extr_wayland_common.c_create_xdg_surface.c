
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_wayland_state {int xdg_toplevel; int xdg_surface; int surface; int wm_base; } ;


 int xdg_surface_add_listener (int ,int *,struct vo_wayland_state*) ;
 int xdg_surface_get_toplevel (int ) ;
 int xdg_surface_listener ;
 int xdg_toplevel_add_listener (int ,int *,struct vo_wayland_state*) ;
 int xdg_toplevel_listener ;
 int xdg_toplevel_set_app_id (int ,char*) ;
 int xdg_toplevel_set_title (int ,char*) ;
 int xdg_wm_base_get_xdg_surface (int ,int ) ;

__attribute__((used)) static int create_xdg_surface(struct vo_wayland_state *wl)
{
    wl->xdg_surface = xdg_wm_base_get_xdg_surface(wl->wm_base, wl->surface);
    xdg_surface_add_listener(wl->xdg_surface, &xdg_surface_listener, wl);

    wl->xdg_toplevel = xdg_surface_get_toplevel(wl->xdg_surface);
    xdg_toplevel_add_listener(wl->xdg_toplevel, &xdg_toplevel_listener, wl);

    xdg_toplevel_set_title (wl->xdg_toplevel, "mpv");
    xdg_toplevel_set_app_id(wl->xdg_toplevel, "mpv");

    return 0;
}
