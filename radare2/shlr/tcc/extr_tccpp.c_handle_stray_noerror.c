
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_num; } ;


 char ch ;
 TYPE_1__* file ;
 int inp () ;

__attribute__((used)) static int handle_stray_noerror(void)
{
 while (ch == '\\') {
  inp ();
  if (ch == '\n') {
   file->line_num++;
   inp ();
  } else if (ch == '\r') {
   inp ();
   if (ch != '\n') {
    goto fail;
   }
   file->line_num++;
   inp ();
  } else {
fail:
   return 1;
  }
 }
 return 0;
}
