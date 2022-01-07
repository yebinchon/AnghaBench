
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;



 int KC_0 ;
 int KC_7 ;
 int KC_8 ;
 int KC_9 ;
 int KC_BTN1 ;
 int KC_LALT ;
 int KC_LCTL ;
 int KC_LSFT ;
 int KC_RALT ;
 int KC_RCTL ;
 int KC_RSFT ;



 int MOD_BIT (int ) ;



 int mousekey_clear () ;
 int mousekey_off (int ) ;
 int mousekey_on (int ) ;
 int mousekey_send () ;
 int register_mods (int ) ;
 int send_keyboard_report () ;
 int tap_helper (TYPE_2__*,int ,int ,int ) ;
 int unregister_mods (int ) ;
 int wait_ms (int) ;

void action_function(keyrecord_t *record, uint8_t id, uint8_t opt) {

    switch (id) {
        case 132:
            tap_helper(record, KC_LCTL, KC_RALT, KC_8);
            break;
        case 129:
            tap_helper(record, KC_RCTL, KC_RALT, KC_9);
            break;
        case 133:
            tap_helper(record, KC_LALT, KC_RALT, KC_7);
            break;
        case 130:
            tap_helper(record, KC_RALT, KC_RALT, KC_0);
            break;
        case 131:
            tap_helper(record, KC_LSFT, KC_LSFT, KC_8);
            break;
        case 128:
            tap_helper(record, KC_RSFT, KC_LSFT, KC_9);
            break;
        case 134:
            if (record->event.pressed) {
                mousekey_clear();
                register_mods(MOD_BIT(KC_LCTL));
                send_keyboard_report();
                wait_ms(5);
                mousekey_on(KC_BTN1);
                mousekey_send();
                wait_ms(10);
                mousekey_off(KC_BTN1);
                mousekey_send();
                wait_ms(5);
                unregister_mods(MOD_BIT(KC_LCTL));
                send_keyboard_report();
            }
            break;
    }
}
