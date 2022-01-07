
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
 int KC_A ;
 int KC_DEL ;
 int KC_LGUI ;
 int SEND_STRING (char*) ;



 int register_code (int ) ;
 int send_unicode_hex_string (char*) ;
 int tap_code (int ) ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    if (record->event.pressed) {
        switch(keycode) {
            case 136:
                if(record->event.pressed){
                    send_unicode_hex_string("0028 3063 25D5 203F 25D5 0029 3063");
                }
                return 0;
                break;
            case 133:
                if(record->event.pressed){
                    SEND_STRING("t(-_-t)");
                }
                return 0;
                break;
            case 132:
                if(record->event.pressed){
                     send_unicode_hex_string("0298 203F 0298");
                }
                return 0;
                break;
            case 135:
                if (record->event.pressed) {
                    register_code(KC_LGUI);
                    tap_code(KC_A);
                    unregister_code(KC_LGUI);
                    tap_code(KC_DEL);
                }
                return 0;
                break;
            case 130:
                if (record->event.pressed) {
                    send_unicode_hex_string("00AF 005C 005F 0028 30C4 0029 005F 002F 00AF");
                }
                return 0;
                break;
            case 131:
                if(record->event.pressed){
                    send_unicode_hex_string("2665 203F 2665");
                }
                return 0;
                break;
            case 134:
                if(record->event.pressed){
                    send_unicode_hex_string("0CA0 005F 0CA0");
                }
                return 0;
                break;
            case 129:
                if(record->event.pressed){
                    send_unicode_hex_string("0028 256F 00B0 25A1 00B0 0029 256F 0020 FE35 0020 253B 2501 253B");
                }
                return 0;
                break;
            case 128:
                if(record->event.pressed){
                    send_unicode_hex_string("253B 2501 253B FE35 0020 005C 0028 00B0 25A1 00B0 0029 002F 0020 FE35 0020 253B 2501 253B");
                }
                return 0;
                break;
                }
    }
    return 1;
}
