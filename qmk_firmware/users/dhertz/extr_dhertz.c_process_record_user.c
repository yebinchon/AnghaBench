
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
 int KC_LGUI ;
 int KC_LSFT ;
 int KC_RGUI ;
 int KC_RSFT ;
 int MOD_BIT (int ) ;
 int SEND_STRING (char*) ;
 char* SS_LALT (char*) ;
 char* SS_LCTRL (char*) ;
 char* SS_LGUI (char*) ;
 char* SS_TAP (int ) ;
 int X_GRAVE ;
 int X_NONUS_BSLASH ;
 int X_TAB ;
 int get_mods () ;
 int mod_or_mod_with_macro (TYPE_2__*,int ,char*) ;
 int process_record_keymap (int,TYPE_2__*) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch(keycode) {
        case 131:
            mod_or_mod_with_macro(record, KC_LGUI, SS_TAP(X_TAB));
            return 0;
        case 133:
            mod_or_mod_with_macro(record, KC_RGUI, SS_TAP(X_GRAVE));
            return 0;
    }

    if (record->event.pressed) {
        switch(keycode) {
            case 129:
                if (get_mods()&(MOD_BIT(KC_LSFT)|MOD_BIT(KC_RSFT))) {
                    SEND_STRING(SS_TAP(X_NONUS_BSLASH));
                } else {
                    SEND_STRING(SS_LALT("3"));
                }
                break;
            case 130:
                SEND_STRING(SS_LCTRL("a"));
                break;
            case 134:
                SEND_STRING(SS_LGUI(SS_LALT("c")));
                break;
            case 132:
                SEND_STRING(SS_LGUI("L"));
                break;
            case 128:
                SEND_STRING("country_iso_alpha2_code");
                break;
            default:
                return process_record_keymap(keycode, record);
        }
        return 0;
    }
    return process_record_keymap(keycode, record);
}
