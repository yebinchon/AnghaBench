
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_4__ {int nr_cooling_dev; TYPE_1__* cdi; } ;
struct TYPE_3__ {int instance; int type; } ;


 int A_BOLD ;
 char* DIAG_TITLE ;
 int box (int *,int ,int ) ;
 int diag_dev_rows () ;
 int * dialogue_window ;
 int getmaxyx (int *,int,int) ;
 int maxx ;
 int mvwprintw (int *,int,int,char*,...) ;
 TYPE_2__ ptdata ;
 scalar_t__ tui_disabled ;
 int wattroff (int *,int ) ;
 int wattron (int *,int ) ;
 int werase (int *) ;
 int wrefresh (int *) ;

void show_dialogue(void)
{
 int j, x = 0, y = 0;
 int rows, cols;
 WINDOW *w = dialogue_window;

 if (tui_disabled || !w)
  return;

 getmaxyx(w, rows, cols);


 (void)cols;

 werase(w);
 box(w, 0, 0);
 mvwprintw(w, 0, maxx/4, DIAG_TITLE);

 for (j = 0; j <= ptdata.nr_cooling_dev; j++) {
  y = j % diag_dev_rows();
  if (y == 0 && j != 0)
   x += 20;
  if (j == ptdata.nr_cooling_dev)

   mvwprintw(w, y+1, x+1, "%C-%.12s", 'A'+j, "Set Temp");
  else
   mvwprintw(w, y+1, x+1, "%C-%.10s-%2d", 'A'+j,
    ptdata.cdi[j].type, ptdata.cdi[j].instance);
 }
 wattron(w, A_BOLD);
 mvwprintw(w, diag_dev_rows()+1, 1, "Enter Choice [A-Z]?");
 wattroff(w, A_BOLD);

 mvwprintw(w, rows - 2, 1,
  "Legend: A=Active, P=Passive, C=Critical");

 wrefresh(dialogue_window);
}
