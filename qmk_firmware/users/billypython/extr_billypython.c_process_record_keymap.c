
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int keyrecord_t ;



__attribute__((weak))
bool process_record_keymap(uint16_t keycode, keyrecord_t *record) {
  return 1;
}
