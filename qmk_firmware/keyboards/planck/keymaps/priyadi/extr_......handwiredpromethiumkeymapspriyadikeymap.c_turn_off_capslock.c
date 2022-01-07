
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_CAPS ;
 scalar_t__ capslock ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void turn_off_capslock() {
  if (capslock) {
    register_code(KC_CAPS);
    unregister_code(KC_CAPS);
  }
}
