
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int keyrecord_t ;





 int KC_LGUI ;
 int KC_RGUI ;
 char* SS_LALT (char*) ;
 int mod_or_mod_with_macro (int *,int ,char*) ;

bool process_record_keymap(uint16_t keycode, keyrecord_t *record) {
    switch(keycode) {
        case 128:
            mod_or_mod_with_macro(record, KC_LGUI, " ");
            break;
        case 129:
            mod_or_mod_with_macro(record, KC_RGUI, "H");
            break;
        case 130:
            mod_or_mod_with_macro(record, KC_LGUI, SS_LALT("D"));
            break;
        default:
            return 1;
    }
    return 0;
}
