
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int * dialogue_window ;
 int mvwprintw (int *,int,int,char*,char*) ;

void write_dialogue_win(char *buf, int y, int x)
{
 WINDOW *w = dialogue_window;

 mvwprintw(w, y, x, "%s", buf);
}
