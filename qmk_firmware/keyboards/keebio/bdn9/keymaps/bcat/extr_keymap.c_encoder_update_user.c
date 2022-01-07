
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KC_VOLD ;
 int KC_VOLU ;
 int backlight_decrease () ;
 int backlight_increase () ;
 int tap_code (int ) ;

void encoder_update_user(uint8_t index, bool clockwise) {
    switch (index) {

        case 0:
            tap_code(clockwise ? KC_VOLU : KC_VOLD);
            break;


        case 1:
            if (clockwise) {
                backlight_increase();
            } else {
                backlight_decrease();
            }
            break;
    }
}
