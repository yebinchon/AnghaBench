
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int keyrecord_t ;




 int on_reset () ;
 int set_lights_default () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case 129:



            return 1;
        case 128:
            on_reset();
            return 1;
        default:
            return 1;
    }
}
