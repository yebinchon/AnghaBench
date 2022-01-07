
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int C (int ) ;
 int KC_0 ;
 int KC_9 ;
 int KC_BSLASH ;
 int KC_C ;

 int KC_DELETE ;

 int KC_DOWN ;


 int KC_EQUAL ;
 int KC_GRAVE ;
 int KC_LALT ;
 int KC_LBRACKET ;
 int KC_LCTL ;
 int KC_LEFT ;
 int KC_LGUI ;
 int KC_LSFT ;
 int KC_MINUS ;


 int KC_RALT ;
 int KC_RBRACKET ;
 int KC_RCTL ;
 int KC_RGHT ;
 int KC_RGUI ;
 int KC_RSFT ;
 int KC_SLASH ;
 int KC_UP ;

 int KC_V ;
 int KC_X ;
 int KC_Z ;
 int MOD_LALT ;
 int MOD_LCTL ;
 int MOD_LGUI ;
 int MOD_LSFT ;
 int ONESHOT_PRESSED ;
 int ONESHOT_START ;
 int S (int ) ;
 int TAPPING_TERM ;
 int _COMMAND ;
 int _DVORAK ;
 int _QWERTY ;
 int _RISE ;
 int clear_oneshot_layer_state (int ) ;
 int last_mod ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int mod_lift (int ,int ,int) ;
 int mod_press (int ,int ,int) ;
 int register_code (int ) ;
 int send_string (char*) ;
 int set_oneshot_layer (int ,int ) ;
 int set_oneshot_mods (int ) ;
 int set_single_persistent_default_layer (int ) ;
 int tap_code16 (int ) ;
 int tap_timer ;
 int timer_elapsed (int ) ;
 int timer_read () ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {

case 154:
if (record->event.pressed) {
    set_single_persistent_default_layer(_DVORAK);
}
return 1;
break;

case 139:
if (record->event.pressed) {
    set_single_persistent_default_layer(_QWERTY);
}
return 1;
break;

case 138:
if (record->event.pressed) {
    mod_press(S(KC_9), KC_LALT, 0);
} else {
    mod_lift(S(KC_9), KC_LALT, 0);
}
return 0;
break;
case 133:
if (record->event.pressed) {
    mod_press(S(KC_0), KC_RALT, 1);
} else {
    mod_lift(S(KC_0), KC_RALT, 1);
}
return 0;
break;

case 136:
if (record->event.pressed) {
    mod_press(KC_GRAVE, KC_LGUI, 2);
} else {
    mod_lift(KC_GRAVE, KC_LGUI, 2);
}
return 0;
break;
case 131:
if (record->event.pressed) {
    mod_press(KC_BSLASH, KC_RGUI, 3);
} else {
    mod_lift(KC_BSLASH, KC_RGUI, 3);
}
return 0;
break;

case 137:
if (record->event.pressed) {
    mod_press(KC_LBRACKET, KC_LCTL, 4);
} else {
    mod_lift(KC_LBRACKET, KC_LCTL, 4);
}
return 0;
break;
case 132:
if (record->event.pressed) {
    mod_press(KC_RBRACKET, KC_RCTL, 5);
} else {
    mod_lift(KC_RBRACKET, KC_RCTL, 5);
}
return 0;
break;

case 134:
if (record->event.pressed) {
    mod_press(KC_EQUAL, KC_LSFT, 6);
} else {
    mod_lift(KC_EQUAL, KC_LSFT, 6);
}
return 0;
break;
case 129:
if (record->event.pressed) {
    mod_press(KC_MINUS, KC_RSFT, 7);
} else {
    mod_lift(KC_MINUS, KC_RSFT, 7);
}
return 0;
break;

case 135:
if (record->event.pressed) {
    tap_timer = timer_read();
    last_mod = 8;
    layer_on(_RISE);
} else {
    layer_off(_RISE);
    if (last_mod == 8 && timer_elapsed(tap_timer) < TAPPING_TERM) {
        tap_code16(KC_DELETE);
        last_mod = 10;
    }
}
return 0;
break;
case 130:
if (record->event.pressed) {
    tap_timer = timer_read();
    last_mod = 9;
    layer_on(_RISE);
} else {
    layer_off(_RISE);
    if (last_mod == 9 && timer_elapsed(tap_timer) < TAPPING_TERM) {
        tap_code16(KC_SLASH);
        last_mod = 10;
    }
}
return 0;
break;

case 143:
if (record->event.pressed) {
    set_oneshot_mods(MOD_LSFT);
    last_mod = 10;
}
return 0;
break;
case 150:
if (record->event.pressed) {
    set_oneshot_mods(MOD_LCTL);
    last_mod = 10;
}
return 0;
break;
case 152:
if (record->event.pressed) {
    set_oneshot_mods(MOD_LALT);
    last_mod = 10;
}
return 0;
break;
case 147:
if (record->event.pressed) {
    set_oneshot_mods(MOD_LGUI);
    last_mod = 10;
}
return 0;
break;

case 144:
if (record->event.pressed) {
    register_code(KC_LCTL);
    tap_code16(S(KC_RGHT));
    unregister_code(KC_LCTL);
    last_mod = 10;
}
return 0;
break;
case 146:
if (record->event.pressed) {
    register_code(KC_LCTL);
    tap_code16(S(KC_LEFT));
    unregister_code(KC_LCTL);
    last_mod = 10;
}
return 0;
break;
case 148:
if (record->event.pressed) {
    register_code(KC_LCTL);
    tap_code16(S(KC_DOWN));
    unregister_code(KC_LCTL);
    last_mod = 10;
}
return 0;
break;
case 141:
if (record->event.pressed) {
    register_code(KC_LCTL);
    tap_code16(S(KC_UP));
    unregister_code(KC_LCTL);
    last_mod = 10;
}
return 0;
break;

case 142:
if (record->event.pressed) {
    tap_code16(C(KC_Z));
    last_mod = 10;
}
return 0;
break;
case 151:
if (record->event.pressed) {
    tap_code16(C(KC_C));
    last_mod = 10;
}
return 0;
break;
case 149:
if (record->event.pressed) {
    tap_code16(C(KC_X));
    last_mod = 10;
}
return 0;
break;
case 145:
if (record->event.pressed) {
    tap_code16(C(KC_V));
    last_mod = 10;
}
return 0;
break;

case 156:
if (record->event.pressed) {
    layer_on(_COMMAND);
    set_oneshot_layer(_COMMAND, ONESHOT_START);
    last_mod = 10;
} else {
    clear_oneshot_layer_state (ONESHOT_PRESSED);
}
return 0;
break;

case 128:
if (record->event.pressed) {
    send_string("mhostley");
    last_mod = 10;
}
return 1;
break;
case 153:
if (record->event.pressed) {
    send_string("mhostley@gmail.com");
    last_mod = 10;
}
return 1;
break;
case 140:
if (record->event.pressed) {
    send_string("Samuel Jahnke");
    last_mod = 10;
}
return 1;
break;
case 155:
if (record->event.pressed) {
    send_string("home/mhostley/");
    last_mod = 10;
}
return 1;
break;

}
last_mod = 10;
return 1;
}
