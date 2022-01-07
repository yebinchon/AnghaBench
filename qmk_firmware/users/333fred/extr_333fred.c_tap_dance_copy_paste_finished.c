
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int MOD_MASK_SHIFT ;
 int SEND_STRING (int ) ;
 int SS_LCTRL (char*) ;
 int SS_LSFT (char*) ;
 char* SS_TAP (int ) ;
 int X_INSERT ;
 int get_mods () ;
 int get_oneshot_mods () ;
 int set_oneshot_mods (int) ;

void tap_dance_copy_paste_finished(qk_tap_dance_state_t *state, void *user_data) {
    bool is_paste = state->count == 2;


    uint8_t one_shot_mods = get_oneshot_mods();
    bool is_shift = 0;

    if (get_mods() & MOD_MASK_SHIFT) {
        is_shift = 1;
    } else if (one_shot_mods & MOD_MASK_SHIFT) {
        set_oneshot_mods(one_shot_mods & ~MOD_MASK_SHIFT);
        is_shift = 1;
    }

    if (is_paste) {
        if (is_shift) {
            SEND_STRING(SS_LSFT(SS_TAP(X_INSERT)));
        } else {
            SEND_STRING(SS_LCTRL("v"));
        }
    } else {
        if (is_shift) {
            SEND_STRING(SS_LCTRL(SS_TAP(X_INSERT)));
        } else {
            SEND_STRING(SS_LCTRL("c"));
        }
    }
}
