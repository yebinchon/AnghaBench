
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOR_BLACK ;
 int COLOR_BLUE ;
 int COLOR_GREEN ;
 int COLOR_RED ;
 int COLOR_WHITE ;
 int COLOR_YELLOW ;
 int PT_COLOR_BLUE ;
 int PT_COLOR_BRIGHT ;
 int PT_COLOR_DEFAULT ;
 int PT_COLOR_ERROR ;
 int PT_COLOR_GREEN ;
 int PT_COLOR_HEADER_BAR ;
 int PT_COLOR_RED ;
 int PT_COLOR_YELLOW ;
 int TRUE ;
 int cbreak () ;
 int curs_set (int ) ;
 int init_pair (int ,int ,int ) ;
 int initscr () ;
 int keypad (int ,int ) ;
 int noecho () ;
 int nonl () ;
 int start_color () ;
 int stdscr ;
 scalar_t__ tui_disabled ;
 int use_default_colors () ;

void initialize_curses(void)
{
 if (tui_disabled)
  return;

 initscr();
 start_color();
 keypad(stdscr, TRUE);
 nonl();
 cbreak();
 noecho();
 curs_set(0);
 use_default_colors();

 init_pair(PT_COLOR_DEFAULT, COLOR_WHITE, COLOR_BLACK);
 init_pair(PT_COLOR_HEADER_BAR, COLOR_BLACK, COLOR_WHITE);
 init_pair(PT_COLOR_ERROR, COLOR_BLACK, COLOR_RED);
 init_pair(PT_COLOR_RED, COLOR_WHITE, COLOR_RED);
 init_pair(PT_COLOR_YELLOW, COLOR_WHITE, COLOR_YELLOW);
 init_pair(PT_COLOR_GREEN, COLOR_WHITE, COLOR_GREEN);
 init_pair(PT_COLOR_BLUE, COLOR_WHITE, COLOR_BLUE);
 init_pair(PT_COLOR_BRIGHT, COLOR_WHITE, COLOR_BLACK);

}
