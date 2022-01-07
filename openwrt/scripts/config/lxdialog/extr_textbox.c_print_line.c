
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int MIN (int ,int) ;
 char* get_line () ;
 int getcurx (int *) ;
 int hscroll ;
 int strlen (char*) ;
 int waddch (int *,char) ;
 int waddnstr (int *,char*,int ) ;
 int wclrtoeol (int *) ;
 int wmove (int *,int,int ) ;

__attribute__((used)) static void print_line(WINDOW * win, int row, int width)
{
 char *line;

 line = get_line();
 line += MIN(strlen(line), hscroll);
 wmove(win, row, 0);
 waddch(win, ' ');
 waddnstr(win, line, MIN(strlen(line), width - 2));
 wclrtoeol(win);

}
