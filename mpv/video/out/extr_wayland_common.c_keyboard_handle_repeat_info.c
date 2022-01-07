
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl_keyboard {int dummy; } ;
struct vo_wayland_state {TYPE_2__* vo; } ;
typedef int int32_t ;
struct TYPE_4__ {int input_ctx; TYPE_1__* opts; } ;
struct TYPE_3__ {scalar_t__ native_keyrepeat; } ;


 int mp_input_set_repeat_info (int ,int ,int ) ;

__attribute__((used)) static void keyboard_handle_repeat_info(void *data, struct wl_keyboard *wl_keyboard,
                                        int32_t rate, int32_t delay)
{
    struct vo_wayland_state *wl = data;
    if (wl->vo->opts->native_keyrepeat)
        mp_input_set_repeat_info(wl->vo->input_ctx, rate, delay);
}
