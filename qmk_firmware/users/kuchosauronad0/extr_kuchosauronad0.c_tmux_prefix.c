
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_B ;
 int KC_LCTL ;
 int register_code (int ) ;
 int tap_code (int ) ;
 int unregister_code (int ) ;

void tmux_prefix(void) {
  register_code(KC_LCTL);
  tap_code(KC_B);
  unregister_code(KC_LCTL);
}
