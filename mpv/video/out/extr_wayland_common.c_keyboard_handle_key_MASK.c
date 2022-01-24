#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xkb_mod_index_t ;
typedef  int /*<<< orphan*/  xkb_keysym_t ;
typedef  scalar_t__ uint32_t ;
struct wl_keyboard {int dummy; } ;
struct vo_wayland_state {TYPE_1__* vo; int /*<<< orphan*/  xkb_state; int /*<<< orphan*/  xkb_keymap; } ;
typedef  int /*<<< orphan*/  s ;
struct TYPE_2__ {int /*<<< orphan*/  input_ctx; } ;

/* Variables and functions */
#define  MP_KEY_MODIFIER_ALT 135 
#define  MP_KEY_MODIFIER_CTRL 134 
#define  MP_KEY_MODIFIER_META 133 
#define  MP_KEY_MODIFIER_SHIFT 132 
 int MP_KEY_STATE_DOWN ; 
 int MP_KEY_STATE_UP ; 
 scalar_t__ WL_KEYBOARD_KEY_STATE_PRESSED ; 
#define  XKB_MOD_NAME_ALT 131 
#define  XKB_MOD_NAME_CTRL 130 
#define  XKB_MOD_NAME_LOGO 129 
#define  XKB_MOD_NAME_SHIFT 128 
 int /*<<< orphan*/  XKB_STATE_MODS_DEPRESSED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ code ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void *data, struct wl_keyboard *wl_keyboard,
                                uint32_t serial, uint32_t time, uint32_t key,
                                uint32_t state)
{
    struct vo_wayland_state *wl = data;

    uint32_t code = code = key + 8;
    xkb_keysym_t sym = FUNC6(wl->xkb_state, code);

    int mpmod = state == WL_KEYBOARD_KEY_STATE_PRESSED ? MP_KEY_STATE_DOWN
                                                       : MP_KEY_STATE_UP;

    static const char *mod_names[] = {
        XKB_MOD_NAME_SHIFT,
        XKB_MOD_NAME_CTRL,
        XKB_MOD_NAME_ALT,
        XKB_MOD_NAME_LOGO,
        0,
    };

    static int mods[] = {
        MP_KEY_MODIFIER_SHIFT,
        MP_KEY_MODIFIER_CTRL,
        MP_KEY_MODIFIER_ALT,
        MP_KEY_MODIFIER_META,
        0,
    };

    for (int n = 0; mods[n]; n++) {
        xkb_mod_index_t index = FUNC4(wl->xkb_keymap, mod_names[n]);
        if (!FUNC8(wl->xkb_state, code, index)
            && FUNC7(wl->xkb_state, index,
                                             XKB_STATE_MODS_DEPRESSED))
            mpmod |= mods[n];
    }

    int mpkey = FUNC1(sym);
    if (mpkey) {
        FUNC2(wl->vo->input_ctx, mpkey | mpmod);
    } else {
        char s[128];
        if (FUNC5(sym, s, sizeof(s)) > 0)
            FUNC3(wl->vo->input_ctx, mpmod, FUNC0(s));
    }
}