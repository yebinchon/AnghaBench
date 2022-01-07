
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_SPC ;
 int LCTL (int ) ;
 int tap_code16 (int ) ;

void tmux_prefix(void) {
  tap_code16(LCTL(KC_SPC));
}
