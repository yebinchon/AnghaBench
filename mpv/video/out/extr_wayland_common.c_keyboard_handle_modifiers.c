
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_keyboard {int dummy; } ;
struct vo_wayland_state {int xkb_state; } ;


 int xkb_state_update_mask (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void keyboard_handle_modifiers(void *data, struct wl_keyboard *wl_keyboard,
                                      uint32_t serial, uint32_t mods_depressed,
                                      uint32_t mods_latched, uint32_t mods_locked,
                                      uint32_t group)
{
    struct vo_wayland_state *wl = data;

    xkb_state_update_mask(wl->xkb_state, mods_depressed, mods_latched,
                          mods_locked, 0, 0, group);
}
