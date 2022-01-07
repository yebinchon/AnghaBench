
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct wl_touch {int dummy; } ;
struct vo_wayland_state {TYPE_1__* vo; scalar_t__ touch_entries; } ;
typedef int int32_t ;
struct TYPE_2__ {int input_ctx; } ;


 int MP_KEY_STATE_UP ;
 int MP_MBTN_LEFT ;
 int mp_input_put_key (int ,int) ;

__attribute__((used)) static void touch_handle_up(void *data, struct wl_touch *wl_touch,
                            uint32_t serial, uint32_t time, int32_t id)
{
    struct vo_wayland_state *wl = data;

    wl->touch_entries = 0;

    mp_input_put_key(wl->vo->input_ctx, MP_MBTN_LEFT | MP_KEY_STATE_UP);
}
