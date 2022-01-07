
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEND_STRING (char*) ;
 int tmux_prefix () ;

void tmux_pane_zoom(void) {
  tmux_prefix();

  SEND_STRING("z");
}
