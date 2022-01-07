
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int keyrecord_t ;


 int c_lyr ;
 scalar_t__ led_brightness (int ,int *) ;
 int process_record_keymap (int ,int *) ;
 int rgblight_set () ;
 int set_key_led (int *,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  set_key_led(record, c_lyr);

  if (led_brightness(keycode, record)) {
    rgblight_set();
    return 0;
  }

  rgblight_set();
  return process_record_keymap(keycode, record);
}
