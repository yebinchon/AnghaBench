
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_wayland_state {int sync_size; TYPE_1__* sync; } ;
struct TYPE_2__ {int filled; } ;



int last_available_sync(struct vo_wayland_state *wl)
{
    for (int i = wl->sync_size - 1; i > -1; --i) {
        if (!wl->sync[i].filled)
            return i;
    }
    return -1;
}
