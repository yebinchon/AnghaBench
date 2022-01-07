
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_wayland_state {int xdg_toplevel; } ;


 int VO_NOTAVAIL ;
 int VO_TRUE ;
 int xdg_toplevel_set_title (int ,char*) ;

__attribute__((used)) static int update_window_title(struct vo_wayland_state *wl, char *title)
{
    if (!wl->xdg_toplevel)
        return VO_NOTAVAIL;
    xdg_toplevel_set_title(wl->xdg_toplevel, title);
    return VO_TRUE;
}
