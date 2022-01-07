
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LSHIFT ;
 int KC_SPACE ;
 int register_code (int ) ;
 scalar_t__ shift_count ;
 int tap_code (int ) ;
 int unregister_code (int ) ;

void press_space(void) {
  if(shift_count > 0) unregister_code (KC_LSHIFT);
  tap_code(KC_SPACE);
  if(shift_count > 0) register_code (KC_LSHIFT);
}
