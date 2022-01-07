
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


 int BASE_COLOR ;
 scalar_t__ IS_MOD (int ) ;
 int RGB_RED ;
 int backlight_level (int) ;
 int rgblight_setrgb (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
    backlight_level(4);
  } else {
    backlight_level(6);
  }

  if (IS_MOD(keycode)) {
    if (record->event.pressed) {
      rgblight_setrgb(RGB_RED);
    } else {
      rgblight_setrgb(BASE_COLOR);
    }
  }

  return 1;
}
