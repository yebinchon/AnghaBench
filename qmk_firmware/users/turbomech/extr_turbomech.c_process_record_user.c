
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_8__ {int mode; } ;





 int RGB_current_mode ;
 int caps_is_active ;
 int process_record_keymap (int,TYPE_2__*) ;
 int register_code (int const) ;
 int reset_keyboard () ;
 TYPE_3__ rgblight_config ;
 int rgblight_enable () ;
 int rgblight_mode (int) ;
 int rgblight_setrgb (int,int,int) ;
 int rgblight_step () ;
 int unregister_code (int const) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 130:
     if (record->event.pressed) {
        register_code(130);
        caps_is_active = !caps_is_active;
      if (caps_is_active) {
        rgblight_mode(14);
      }
      else if (!caps_is_active) {
        unregister_code(130);
        rgblight_mode(RGB_current_mode);
      }
    }
    return 0;
    break;

    case 128:

    if (record->event.pressed) {
      rgblight_mode(RGB_current_mode);
      rgblight_step();
      RGB_current_mode = rgblight_config.mode;

    }
    return 0;
    break;

    case 129:
    if (record->event.pressed) {
      rgblight_enable();
      rgblight_mode(1);
      rgblight_setrgb(255, 255, 255);

      reset_keyboard();
    }
    return 0;
    break;
  return 1;
  break;
  }
return process_record_keymap(keycode, record);
}
