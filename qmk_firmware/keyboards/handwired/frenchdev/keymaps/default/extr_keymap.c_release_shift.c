
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LSHIFT ;
 scalar_t__ shift_count ;
 int unregister_code (int ) ;

void release_shift(void) {
  shift_count = shift_count - 1;
  if(shift_count <= 0){
    unregister_code(KC_LSHIFT);
    shift_count = 0;
  }
}
