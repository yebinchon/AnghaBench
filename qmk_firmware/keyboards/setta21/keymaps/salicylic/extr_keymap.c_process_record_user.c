
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mode; } ;




 int RGB_current_mode ;




 int SEND_STRING (char*) ;

 int eeconfig_update_rgblight_default () ;
 int oled_timer ;
 TYPE_3__ rgblight_config ;
 int rgblight_enable () ;
 int rgblight_mode (int ) ;
 int rgblight_step () ;
 int timer_read32 () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  bool result = 0;
  if (record->event.pressed) {



  }
  switch (keycode) {
    case 128:
      if (record->event.pressed) {
        SEND_STRING("_SUM*");
      }
      break;
    case 132:
      if (record->event.pressed) {
        SEND_STRING("_AVERAGE*");
      }
      break;
    case 131:
      if (record->event.pressed) {
        SEND_STRING("_COUNTIF*");
      }
      break;
    case 130:
      if (record->event.pressed) {
        SEND_STRING("_MAX*");
      }
      break;
    case 129:
      if (record->event.pressed) {
        SEND_STRING("_MIN*");
      }
      break;
    default:
      result = 1;
      break;
  }

  return result;
}
