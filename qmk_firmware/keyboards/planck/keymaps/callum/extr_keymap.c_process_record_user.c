
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_LCMD ;
 int KC_LCTL ;






 int cmd_keys_down ;
 int register_code (int ) ;

 int send_string_if_keydown (TYPE_2__*,char*) ;

 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {


        case 148:
            return send_string_if_keydown(record, "&");
        case 147:
            return send_string_if_keydown(record, "*");
        case 146:
            return send_string_if_keydown(record, "@");
        case 145:
            return send_string_if_keydown(record, "\\");
        case 144:
            return send_string_if_keydown(record, "^");
        case 142:
            return send_string_if_keydown(record, "$");
        case 141:
            return send_string_if_keydown(record, "=");
        case 140:
            return send_string_if_keydown(record, "!");
        case 139:
            return send_string_if_keydown(record, "`");
        case 138:
            return send_string_if_keydown(record, "#");
        case 137:
            return send_string_if_keydown(record, "[");
        case 136:
            return send_string_if_keydown(record, "{");
        case 135:
            return send_string_if_keydown(record, "(");
        case 134:
            return send_string_if_keydown(record, "%");
        case 133:
            return send_string_if_keydown(record, "|");
        case 132:
            return send_string_if_keydown(record, "+");
        case 131:
            return send_string_if_keydown(record, "]");
        case 130:
            return send_string_if_keydown(record, "}");
        case 129:
            return send_string_if_keydown(record, ")");
        case 128:
            return send_string_if_keydown(record, "~");


        case 143:
            if (record->event.pressed) {
                if (cmd_keys_down == 0) {
                    register_code(KC_LCMD);
                } else {
                    register_code(KC_LCTL);
                }
                cmd_keys_down++;
            } else {
                if (cmd_keys_down == 1) {
                    unregister_code(KC_LCMD);
                } else {
                    unregister_code(KC_LCTL);
                }
                cmd_keys_down--;
            }
            return 1;
    }
    return 1;
}
