
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;




 int set_japanese_mode (int) ;

bool process_record_ime(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 128:
    case 129:
      if (record->event.pressed) {
        set_japanese_mode(keycode == 128);
      }
      return 0;
  }
  return 1;
}
