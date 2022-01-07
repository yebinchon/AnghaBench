
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tetris_keypress ;

int tetris_get_keypress(void) {
  int out = tetris_keypress;
  tetris_keypress = 0;
  return out;
}
