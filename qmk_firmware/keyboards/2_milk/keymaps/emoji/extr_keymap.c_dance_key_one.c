
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int SEND_STRING (int ) ;
 int SS_TAP (int ) ;
 int X_ENTER ;
 int cycle_unicode_input_mode (int) ;
 int reset_tap_dance (TYPE_1__*) ;
 int send_unicode_hex_string (char*) ;

void dance_key_one (qk_tap_dance_state_t *state, void *user_data) {
    if (state->count == 1) {
        send_unicode_hex_string("00AF 005C 005F 0028 30C4 0029 005F 002F 00AF");
        SEND_STRING(SS_TAP(X_ENTER));
        reset_tap_dance (state);
    } else if (state->count == 2) {
        cycle_unicode_input_mode(+1);
        reset_tap_dance (state);
    }
}
