
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOR_BLACK ;
 int STDIN_FILENO ;
 int cbreak () ;
 int curs_set (int ) ;
 int foregroundColor ;
 int freopen (char*,char*,int ) ;
 scalar_t__ has_colors () ;
 int init_pair (int,int ,int ) ;
 int initscr () ;
 int isatty (int ) ;
 int move (int ,int ) ;
 int noecho () ;
 int start_color () ;
 int stdin ;

void nmstermio_init_terminal(void) {
 if (!isatty(STDIN_FILENO)) {
  stdin = freopen("/dev/tty", "r", stdin);
 }
 initscr();
 cbreak();
 noecho();
 curs_set(0);
 move(0, 0);
 if (has_colors()) {
  start_color();
  init_pair(1, foregroundColor, COLOR_BLACK);
 }
}
