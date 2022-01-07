
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int delwin (int *) ;

__attribute__((used)) static void close_window(WINDOW *win)
{
 if (win) {
  delwin(win);
  win = ((void*)0);
 }
}
