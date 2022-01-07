
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xkb_mod_index_t ;
typedef int xkb_keysym_t ;
typedef scalar_t__ uint32_t ;
struct wl_keyboard {int dummy; } ;
struct vo_wayland_state {TYPE_1__* vo; int xkb_state; int xkb_keymap; } ;
typedef int s ;
struct TYPE_2__ {int input_ctx; } ;






 int MP_KEY_STATE_DOWN ;
 int MP_KEY_STATE_UP ;
 scalar_t__ WL_KEYBOARD_KEY_STATE_PRESSED ;




 int XKB_STATE_MODS_DEPRESSED ;
 int bstr0 (char*) ;
 scalar_t__ code ;
 int lookupkey (int ) ;
 int mp_input_put_key (int ,int) ;
 int mp_input_put_key_utf8 (int ,int,int ) ;
 int xkb_keymap_mod_get_index (int ,char const*) ;
 scalar_t__ xkb_keysym_to_utf8 (int ,char*,int) ;
 int xkb_state_key_get_one_sym (int ,scalar_t__) ;
 scalar_t__ xkb_state_mod_index_is_active (int ,int ,int ) ;
 int xkb_state_mod_index_is_consumed (int ,scalar_t__,int ) ;

__attribute__((used)) static void keyboard_handle_key(void *data, struct wl_keyboard *wl_keyboard,
                                uint32_t serial, uint32_t time, uint32_t key,
                                uint32_t state)
{
    struct vo_wayland_state *wl = data;

    uint32_t code = code = key + 8;
    xkb_keysym_t sym = xkb_state_key_get_one_sym(wl->xkb_state, code);

    int mpmod = state == WL_KEYBOARD_KEY_STATE_PRESSED ? MP_KEY_STATE_DOWN
                                                       : MP_KEY_STATE_UP;

    static const char *mod_names[] = {
        128,
        130,
        131,
        129,
        0,
    };

    static int mods[] = {
        132,
        134,
        135,
        133,
        0,
    };

    for (int n = 0; mods[n]; n++) {
        xkb_mod_index_t index = xkb_keymap_mod_get_index(wl->xkb_keymap, mod_names[n]);
        if (!xkb_state_mod_index_is_consumed(wl->xkb_state, code, index)
            && xkb_state_mod_index_is_active(wl->xkb_state, index,
                                             XKB_STATE_MODS_DEPRESSED))
            mpmod |= mods[n];
    }

    int mpkey = lookupkey(sym);
    if (mpkey) {
        mp_input_put_key(wl->vo->input_ctx, mpkey | mpmod);
    } else {
        char s[128];
        if (xkb_keysym_to_utf8(sym, s, sizeof(s)) > 0)
            mp_input_put_key_utf8(wl->vo->input_ctx, mpmod, bstr0(s));
    }
}
