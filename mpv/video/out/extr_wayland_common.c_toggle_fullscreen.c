
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_wayland_state {int xdg_toplevel; scalar_t__ fullscreen; } ;


 int VO_NOTAVAIL ;
 int VO_TRUE ;
 int xdg_toplevel_set_fullscreen (int ,int *) ;
 int xdg_toplevel_unset_fullscreen (int ) ;

__attribute__((used)) static int toggle_fullscreen(struct vo_wayland_state *wl)
{
    if (!wl->xdg_toplevel)
        return VO_NOTAVAIL;
    if (wl->fullscreen)
        xdg_toplevel_unset_fullscreen(wl->xdg_toplevel);
    else
        xdg_toplevel_set_fullscreen(wl->xdg_toplevel, ((void*)0));
    return VO_TRUE;
}
