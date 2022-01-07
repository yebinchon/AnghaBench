
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BP_UNDS ;
 int KC_LSHIFT ;
 int register_code (int ) ;
 scalar_t__ shift_count ;
 int tap_code (unsigned char) ;
 int unregister_code (int ) ;

void press_underscore(void) {
  if(shift_count > 0) unregister_code (KC_LSHIFT);
  tap_code ((unsigned char) BP_UNDS);
  if(shift_count > 0) register_code (KC_LSHIFT);
}
