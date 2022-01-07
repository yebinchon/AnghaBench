
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_lock; } ;


 int KC_NUMLOCK ;
 TYPE_1__ host_keyboard_led_state () ;
 int tap_code (int ) ;

void matrix_init_user (void) {
  if (!host_keyboard_led_state ().num_lock) {
      tap_code(KC_NUMLOCK);
  }
}
