
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


 int IS_LAYER_ON (int ) ;


 int _ADJUST ;
 int _ALT ;
 int _NAV ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int numlock_down ;
 int numlock_led_off () ;
 int numlock_led_on () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
   case 128:
      if (record->event.pressed) {
    numlock_down = 1;
    if (IS_LAYER_ON(_ALT)) {
     layer_on(_ADJUST);
    }
   } else{
  if(!IS_LAYER_ON(_ADJUST)) {
    if (!IS_LAYER_ON(_NAV)){
     numlock_led_off();
      layer_on(_NAV);
    } else {
     numlock_led_on();
      layer_off(_NAV);
    }
  } else {
   layer_off(_ADJUST);
  }
  numlock_down = 0;
   }
      return 0;
      break;
   case 129:
      if (record->event.pressed) {
    if (numlock_down) {
     layer_on(_ADJUST);
    } else {
     layer_on(_ALT);
    }
   } else {
    if(IS_LAYER_ON(_ADJUST)) {
        layer_off(_ADJUST);
    } else {
     layer_off(_ALT);
    }
   }

      return 0;
      break;
  }
  return 1;
}
