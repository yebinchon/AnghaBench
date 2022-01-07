
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_REVERSE ;
 int COLOR_PAIR (int ) ;
 int PT_COLOR_HEADER_BAR ;
 int VERSION ;
 int mvwprintw (int ,int ,int,char*,int ) ;
 int * status_bar_slots ;
 int status_bar_window ;
 scalar_t__ strlen (int ) ;
 int title_bar_window ;
 scalar_t__ tui_disabled ;
 int wattroff (int ,int ) ;
 int wattron (int ,int ) ;
 int wattrset (int ,int ) ;
 int wbkgd (int ,int ) ;
 int werase (int ) ;
 int wrefresh (int ) ;

void show_title_bar(void)
{
 int i;
 int x = 0;

 if (tui_disabled || !title_bar_window)
  return;

 wattrset(title_bar_window, COLOR_PAIR(PT_COLOR_HEADER_BAR));
 wbkgd(title_bar_window, COLOR_PAIR(PT_COLOR_HEADER_BAR));
 werase(title_bar_window);

 mvwprintw(title_bar_window, 0, 0,
  "     TMON v%s", VERSION);

 wrefresh(title_bar_window);

 werase(status_bar_window);

 for (i = 0; i < 10; i++) {
  if (strlen(status_bar_slots[i]) == 0)
   continue;
  wattron(status_bar_window, A_REVERSE);
  mvwprintw(status_bar_window, 0, x, "%s", status_bar_slots[i]);
  wattroff(status_bar_window, A_REVERSE);
  x += strlen(status_bar_slots[i]) + 1;
 }
 wrefresh(status_bar_window);
}
