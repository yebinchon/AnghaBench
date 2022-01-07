
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_SCLN ;
 int tap_code (int ) ;
 int tmux_prefix () ;

void tmux_pane_last(void) {
  tmux_prefix();
  tap_code(KC_SCLN);
}
