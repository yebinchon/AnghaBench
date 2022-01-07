
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_wayland_state {int surface; int geometry; } ;
struct vo {struct vo_wayland_state* wl; } ;


 int mp_rect_h (int ) ;
 int mp_rect_w (int ) ;
 int wl_surface_commit (int ) ;
 int wl_surface_damage (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void flip_page(struct vo *vo)
{
    struct vo_wayland_state *wl = vo->wl;

    wl_surface_damage(wl->surface, 0, 0, mp_rect_w(wl->geometry),
                      mp_rect_h(wl->geometry));
    wl_surface_commit(wl->surface);
}
