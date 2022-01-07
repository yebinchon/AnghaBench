
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int MAX_DISP_TEMP ;
 int TDATA_LEFT ;
 int mvwaddch (int *,int,int,char) ;
 int whline (int *,unsigned long,int) ;

__attribute__((used)) static void draw_hbar(WINDOW *win, int y, int start, int len, unsigned long ptn,
  bool end)
{
 mvwaddch(win, y, start, ptn);
 whline(win, ptn, len);
 if (end)
  mvwaddch(win, y, MAX_DISP_TEMP+TDATA_LEFT, ']');
}
