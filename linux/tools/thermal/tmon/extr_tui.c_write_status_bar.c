
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mvwprintw (int ,int ,int,char*,char*) ;
 int status_bar_window ;
 int wrefresh (int ) ;

void write_status_bar(int x, char *line)
{
 mvwprintw(status_bar_window, 0, x, "%s", line);
 wrefresh(status_bar_window);
}
