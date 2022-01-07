
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


 int MOD_MASK_SHIFT ;




 int eeconfig_update_rgb_matrix_default () ;
 int eeconfig_update_rgblight_default () ;
 int get_mods () ;
 int reset_keyboard () ;
 int rgb_encoder_state ;
 int rgb_matrix_increase_flags () ;
 int rgblight_enable () ;
 int timer_elapsed (int) ;
 int timer_read () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  static uint16_t reset_timer;
  switch (keycode) {
    case 130:
      return 0;
    case 131:
      if (record->event.pressed) {
          reset_timer = timer_read();
      } else {
          if (timer_elapsed(reset_timer) >= 500) {
              reset_keyboard();
          }
      }
      return 0;







    case 129:
      return 0;
  }
  return 1;
}
