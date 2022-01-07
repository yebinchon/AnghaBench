
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_VOLD ;
 int KC_VOLU ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void encoder_update(bool clockwise) {
  if (clockwise) {
    register_code(KC_VOLU);
    unregister_code(KC_VOLU);
  } else {
    register_code(KC_VOLD);
    unregister_code(KC_VOLD);
  }
}
