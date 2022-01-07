
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_ENT ;
 int KC_UP ;
 int tap_code (int ) ;
 int tmux_pane_last () ;

void tmux_pane_switch_repeat(void) {
  tmux_pane_last();
  tap_code(KC_UP);
  tap_code(KC_ENT);
  tmux_pane_last();
}
