
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






 int rgblight_disable () ;
 int rgblight_enable () ;
 int rgblight_setrgb (int,int,int) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
    switch(keycode) {
      case 129:
        rgblight_enable();
        rgblight_setrgb(0, 204, 33);
        break;
      case 130:
        rgblight_enable();
        rgblight_setrgb(229, 65, 0);
        break;
      case 128:
        rgblight_enable();
        rgblight_setrgb(255, 255, 255);
        break;
      case 131:
        rgblight_disable();
        break;
    }
  }
  return 1;
}
