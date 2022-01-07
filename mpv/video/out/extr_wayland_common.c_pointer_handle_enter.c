
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wl_fixed_t ;
typedef int uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_pointer {int dummy; } ;
struct vo_wayland_state {TYPE_1__* vo; int cursor_visible; int pointer_id; struct wl_pointer* pointer; } ;
struct TYPE_2__ {int input_ctx; } ;


 int MP_KEY_MOUSE_ENTER ;
 int mp_input_put_key (int ,int ) ;
 int set_cursor_visibility (struct vo_wayland_state*,int ) ;

__attribute__((used)) static void pointer_handle_enter(void *data, struct wl_pointer *pointer,
                                 uint32_t serial, struct wl_surface *surface,
                                 wl_fixed_t sx, wl_fixed_t sy)
{
    struct vo_wayland_state *wl = data;

    wl->pointer = pointer;
    wl->pointer_id = serial;

    set_cursor_visibility(wl, wl->cursor_visible);
    mp_input_put_key(wl->vo->input_ctx, MP_KEY_MOUSE_ENTER);
}
