
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_ENT ;
 int send_keycode (int ) ;

void tetris_send_newline(void) {
  send_keycode(KC_ENT);
}
