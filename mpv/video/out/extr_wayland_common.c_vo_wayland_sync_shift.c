
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_wayland_sync {int member_3; int member_2; int member_1; int member_0; } ;
struct vo_wayland_state {int sync_size; struct vo_wayland_sync* sync; } ;



void vo_wayland_sync_shift(struct vo_wayland_state *wl)
{
    for (int i = wl->sync_size - 1; i > 0; --i) {
        wl->sync[i] = wl->sync[i-1];
    }
    struct vo_wayland_sync sync = {0, 0, 0, 0};
    wl->sync[0] = sync;
}
