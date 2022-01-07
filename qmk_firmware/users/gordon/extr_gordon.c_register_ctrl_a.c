
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_A ;
 int KC_LCTL ;
 int register_code (int ) ;

void register_ctrl_a (void) {
  register_code(KC_LCTL);
  register_code(KC_A);
}
