
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
 int _COLEMA_LAYER ;
 int _DVORAK_LAYER ;
 int _QWERTY_LAYER ;
 int _QWERTZ_LAYER ;
 int cospad_bl_led_off () ;
 int cospad_bl_led_on () ;
 int cospad_bl_led_togg () ;
 int print (char*) ;
 int set_single_persistent_default_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
 switch (keycode) {
  case 132:
   if (record->event.pressed) {
    cospad_bl_led_togg();
   }
   return 0;
  case 133:
   if (record->event.pressed) {
    cospad_bl_led_on();
   }
   return 0;
  case 134:
   if (record->event.pressed) {
    cospad_bl_led_off();
   }
   return 0;
  case 129:
   if (record->event.pressed) {
    set_single_persistent_default_layer(_QWERTY_LAYER);
    print("switched to QWERTY layout\n");
   }
   return 0;
   break;
  case 128:
   if (record->event.pressed) {
    set_single_persistent_default_layer(_QWERTZ_LAYER);
   }
   return 0;
   break;
  case 131:
   if (record->event.pressed) {
    set_single_persistent_default_layer(_COLEMA_LAYER);
   }
   return 0;
   break;
  case 130:
   if (record->event.pressed) {
    set_single_persistent_default_layer(_DVORAK_LAYER);
   }
   return 0;
   break;
  default:
   return 1;
 }
}
