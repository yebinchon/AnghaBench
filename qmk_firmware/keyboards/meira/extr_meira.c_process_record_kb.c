
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int keyrecord_t ;


 scalar_t__ RESET ;
 int process_record_user (scalar_t__,int *) ;
 int reset_keyboard_kb () ;

bool process_record_kb(uint16_t keycode, keyrecord_t *record) {


    if (keycode == RESET) {
        reset_keyboard_kb();
    } else {
    }
 return process_record_user(keycode, record);
}
