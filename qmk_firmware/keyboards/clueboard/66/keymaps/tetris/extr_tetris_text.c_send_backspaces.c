
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curx ;
 int tetris_send_backspace () ;

__attribute__((used)) static void send_backspaces(int backspaces) {
  for (int i = 0; i < backspaces; i++) {
    tetris_send_backspace();
    curx--;
  }
}
