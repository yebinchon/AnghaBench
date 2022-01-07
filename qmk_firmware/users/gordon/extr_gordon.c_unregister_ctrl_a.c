
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_A ;
 int KC_LCTL ;
 int unregister_code (int ) ;

void unregister_ctrl_a (void) {
  unregister_code(KC_LCTL);
  unregister_code(KC_A);
}
