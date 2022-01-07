
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COUNT ;
 scalar_t__ check_dscr (char*) ;
 int set_dscr (int) ;
 int set_dscr_usr (int) ;

int dscr_user(void)
{
 int i;

 check_dscr("");

 for (i = 0; i < COUNT; i++) {
  set_dscr(i);
  if (check_dscr("kernel"))
   return 1;
 }

 for (i = 0; i < COUNT; i++) {
  set_dscr_usr(i);
  if (check_dscr("user"))
   return 1;
 }
 return 0;
}
