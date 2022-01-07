
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vo_wayland_state {int seat; scalar_t__ xdg_toplevel; } ;


 int xdg_toplevel_move (scalar_t__,int ,int ) ;

__attribute__((used)) static void window_move(struct vo_wayland_state *wl, uint32_t serial)
{
    if (wl->xdg_toplevel)
        xdg_toplevel_move(wl->xdg_toplevel, wl->seat, serial);
}
