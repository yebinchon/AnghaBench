
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
 int SEND_STRING (char*) ;
 int SHIFT_MOD ;
 char* SS_TAP (int ) ;
 int X_BSPACE ;
 int X_DELETE ;
 int clear_mods () ;
 int get_mods () ;
 int set_mods (int) ;

bool process_record_user(uint16_t keycode, keyrecord_t* record)
{
    if (record->event.pressed) {
        switch (keycode) {
            case 128:
                if (record->event.pressed) {
                    if (get_mods() & SHIFT_MOD) {
                        uint8_t current_mods = get_mods();
                        clear_mods();
                        SEND_STRING(SS_TAP(X_DELETE));
                        set_mods(current_mods);
                    } else {
                        SEND_STRING(SS_TAP(X_BSPACE));
                    }
                }
                return 0;
            case 137:
                if (record->event.pressed) {
                    uint8_t current_mods = get_mods();
                    if (current_mods & SHIFT_MOD) {
                        clear_mods();
                        SEND_STRING("1");
                        set_mods(current_mods);
                    } else {
                        SEND_STRING("!");
                    }
                }
                return 0;
            case 136:
                if (record->event.pressed) {
                    uint8_t current_mods = get_mods();
                    if (current_mods & SHIFT_MOD) {
                        clear_mods();
                        SEND_STRING("2");
                        set_mods(current_mods);
                    } else {
                        SEND_STRING("@");
                    }
                }
                return 0;
            case 135:
                if (record->event.pressed) {
                    uint8_t current_mods = get_mods();
                    if (current_mods & SHIFT_MOD) {
                        clear_mods();
                        SEND_STRING("3");
                        set_mods(current_mods);
                    } else {
                        SEND_STRING("#");
                    }
                }
                return 0;
            case 134:
                if (record->event.pressed) {
                    uint8_t current_mods = get_mods();
                    if (current_mods & SHIFT_MOD) {
                        clear_mods();
                        SEND_STRING("4");
                        set_mods(current_mods);
                    } else {
                        SEND_STRING("$");
                    }
                }
                return 0;
            case 133:
                if (record->event.pressed) {
                    uint8_t current_mods = get_mods();
                    if (current_mods & SHIFT_MOD) {
                        clear_mods();
                        SEND_STRING("5");
                        set_mods(current_mods);
                    } else {
                        SEND_STRING("%");
                    }
                }
                return 0;
            case 132:
                if (record->event.pressed) {
                    uint8_t current_mods = get_mods();
                    if (current_mods & SHIFT_MOD) {
                        clear_mods();
                        SEND_STRING("6");
                        set_mods(current_mods);
                    } else {
                        SEND_STRING("^");
                    }
                }
                return 0;
            case 131:
                if (record->event.pressed) {
                    uint8_t current_mods = get_mods();
                    if (current_mods & SHIFT_MOD) {
                        clear_mods();
                        SEND_STRING("7");
                        set_mods(current_mods);
                    } else {
                        SEND_STRING("&");
                    }
                }
                return 0;
            case 130:
                if (record->event.pressed) {
                    uint8_t current_mods = get_mods();
                    if (current_mods & SHIFT_MOD) {
                        clear_mods();
                        SEND_STRING("8");
                        set_mods(current_mods);
                    } else {
                        SEND_STRING("*");
                    }
                }
                return 0;
            case 129:
                if (record->event.pressed) {
                    uint8_t current_mods = get_mods();
                    if (current_mods & SHIFT_MOD) {
                        clear_mods();
                        SEND_STRING("9");
                        set_mods(current_mods);
                    } else {
                        SEND_STRING("(");
                    }
                }
                return 0;
            case 138:
                if (record->event.pressed) {
                    uint8_t current_mods = get_mods();
                    if (current_mods & SHIFT_MOD) {
                        clear_mods();
                        SEND_STRING("0");
                        set_mods(current_mods);
                    } else {
                        SEND_STRING(")");
                    }
                }
                return 0;
        }
    }
    return 1;
}
