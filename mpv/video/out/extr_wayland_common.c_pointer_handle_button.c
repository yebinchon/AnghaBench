
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct wl_pointer {int dummy; } ;
struct vo_wayland_state {int mouse_y; int mouse_x; TYPE_1__* vo; } ;
struct TYPE_2__ {int input_ctx; } ;







 int MP_KEY_STATE_DOWN ;
 int MP_KEY_STATE_UP ;
 int MP_MBTN_BACK ;
 int MP_MBTN_FORWARD ;
 int MP_MBTN_LEFT ;
 int MP_MBTN_MID ;
 int MP_MBTN_RIGHT ;
 int WL_POINTER_BUTTON_STATE_PRESSED ;
 int mp_input_put_key (int ,int) ;
 int mp_input_test_dragging (int ,int ,int ) ;
 int window_move (struct vo_wayland_state*,int) ;

__attribute__((used)) static void pointer_handle_button(void *data, struct wl_pointer *wl_pointer,
                                  uint32_t serial, uint32_t time, uint32_t button,
                                  uint32_t state)
{
    struct vo_wayland_state *wl = data;

    state = state == WL_POINTER_BUTTON_STATE_PRESSED ? MP_KEY_STATE_DOWN
                                                     : MP_KEY_STATE_UP;

    switch (button) {
    case 131:
        button = MP_MBTN_LEFT;
        break;
    case 130:
        button = MP_MBTN_MID;
        break;
    case 129:
        button = MP_MBTN_RIGHT;
        break;
    case 128:
        button = MP_MBTN_BACK;
        break;
    case 132:
        button = MP_MBTN_FORWARD;
        break;
    default:
        button = 0;
        break;
    }

    if (button) {
        mp_input_put_key(wl->vo->input_ctx, button | state);
    }

    if (!mp_input_test_dragging(wl->vo->input_ctx, wl->mouse_x, wl->mouse_y) &&
        (button == MP_MBTN_LEFT) && (state == MP_KEY_STATE_DOWN))
        window_move(wl, serial);
}
