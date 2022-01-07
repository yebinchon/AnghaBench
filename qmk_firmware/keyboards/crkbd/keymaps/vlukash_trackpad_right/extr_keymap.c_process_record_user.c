
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {int buttons; } ;
typedef TYPE_2__ report_mouse_t ;
struct TYPE_8__ {int pressed; } ;
struct TYPE_10__ {TYPE_1__ event; } ;
typedef TYPE_3__ keyrecord_t ;
struct TYPE_11__ {int mode; } ;




 int MOUSE_BTN1 ;




 int RGB_current_mode ;

 int _ADJUST ;
 int _LOWER ;
 unsigned long _QWERTY ;
 int _RAISE ;
 int eeconfig_update_rgblight_default () ;
 int isScrollMode ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int persistent_default_layer_set (unsigned long) ;
 TYPE_2__ pointing_device_get_report () ;
 int pointing_device_send () ;
 int pointing_device_set_report (TYPE_2__) ;
 TYPE_4__ rgblight_config ;
 int rgblight_enable () ;
 int rgblight_mode (int ) ;
 int rgblight_step () ;
 int update_tri_layer_RGB (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  report_mouse_t currentReport = {};
  switch (keycode) {
    case 132:
      if (record->event.pressed) {
        persistent_default_layer_set(1UL<<_QWERTY);
      }
      return 0;
    case 134:
      if (record->event.pressed) {
        layer_on(_LOWER);
        update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_LOWER);
        update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
    case 131:
      if (record->event.pressed) {
        layer_on(_RAISE);
        update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_RAISE);
        update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
    case 129:







      return 0;
    case 130:







      break;
    case 133:
      currentReport = pointing_device_get_report();
      if (record->event.pressed) {
        currentReport.buttons |= MOUSE_BTN1;
      }
      else {
        currentReport.buttons &= ~MOUSE_BTN1;
      }
      pointing_device_set_report(currentReport);
      pointing_device_send();
      return 0;
    case 128:
      if (record->event.pressed) {
        isScrollMode = 1;
      }
      else {
        isScrollMode = 0;
      }
      return 0;
  }
  return 1;
}
