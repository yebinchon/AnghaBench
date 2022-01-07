
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LSHIFT ;
 int register_code (int ) ;
 scalar_t__ shift_count ;

void hold_shift(void) {
  shift_count = shift_count + 1;
  register_code(KC_LSHIFT);
}
