
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;



 int KC_ESC ;
 int KC_LCTL ;



 int MOD_BIT (int) ;
 int SYMNUM ;
 int handle_lt (int,TYPE_2__*,int ,int ) ;
 int handle_mt (int,TYPE_2__*,int ,int) ;
 scalar_t__ key_down (int) ;
 int press_counter ;
 int unregister_code (int) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    if(record->event.pressed) {
        press_counter++;





        uint8_t shortcode = keycode & 0xFF;
        if(key_down(shortcode)) {
            unregister_code(shortcode);
        }
    }

    switch(keycode) {
        case 131:
            return handle_lt(keycode, record, SYMNUM, 0);

        case 128:
            return handle_mt(keycode, record, MOD_BIT(KC_LCTL), 1);

        case 130:
        case 129:
            return handle_mt(KC_ESC, record, MOD_BIT(keycode), 2);
    }
    return 1;
}
