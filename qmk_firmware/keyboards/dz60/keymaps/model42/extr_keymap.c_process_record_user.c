
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_LGUI ;
 int KC_R ;
 int KC_RSHIFT ;
 scalar_t__ LT_1_OR_RELOAD_CHROME ;
 int custom_lt_timer ;
 int layer_off (int) ;
 int layer_on (int) ;
 int register_code (int ) ;
 int timer_elapsed (int ) ;
 int timer_read () ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
 if(LT_1_OR_RELOAD_CHROME == keycode) {
  if(record->event.pressed) {
   custom_lt_timer = timer_read();
   layer_on(1);
  } else {
   layer_off(1);
   if (timer_elapsed(custom_lt_timer) < 200) {
    register_code(KC_LGUI);
    register_code(KC_RSHIFT);
    register_code(KC_R);
    unregister_code(KC_R);
    unregister_code(KC_RSHIFT);
    unregister_code(KC_LGUI);
   }
  }
 }
 return 1;
}
