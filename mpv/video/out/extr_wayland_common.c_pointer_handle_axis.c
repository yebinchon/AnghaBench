
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wl_fixed_t ;
typedef int uint32_t ;
struct wl_pointer {int dummy; } ;
struct vo_wayland_state {TYPE_1__* vo; } ;
struct TYPE_2__ {int input_ctx; } ;


 int MP_WHEEL_DOWN ;
 int MP_WHEEL_LEFT ;
 int MP_WHEEL_RIGHT ;
 int MP_WHEEL_UP ;


 double abs (double) ;
 int mp_input_put_wheel (int ,int ,double) ;
 double wl_fixed_to_double (int ) ;

__attribute__((used)) static void pointer_handle_axis(void *data, struct wl_pointer *wl_pointer,
                                uint32_t time, uint32_t axis, wl_fixed_t value)
{
    struct vo_wayland_state *wl = data;
    if (wl_fixed_to_double(value) == 0)
        return;
    double val = wl_fixed_to_double(value)/abs(wl_fixed_to_double(value));
    switch (axis) {
    case 128:
        if (value > 0)
            mp_input_put_wheel(wl->vo->input_ctx, MP_WHEEL_DOWN, +val);
        if (value < 0)
            mp_input_put_wheel(wl->vo->input_ctx, MP_WHEEL_UP, -val);
        break;
    case 129:
        if (value > 0)
            mp_input_put_wheel(wl->vo->input_ctx, MP_WHEEL_RIGHT, +val);
        if (value < 0)
            mp_input_put_wheel(wl->vo->input_ctx, MP_WHEEL_LEFT, -val);
        break;
    }
}
