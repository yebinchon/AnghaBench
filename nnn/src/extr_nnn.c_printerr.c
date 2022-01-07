
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int picker; } ;


 TYPE_1__ cfg ;
 int exit (int) ;
 int exitcurses () ;
 int free (int ) ;
 scalar_t__ g_selpath ;
 int perror (int ) ;
 int pselbuf ;
 int unlink (scalar_t__) ;
 int xitoa (int) ;

__attribute__((used)) static void printerr(int linenum)
{
 exitcurses();
 perror(xitoa(linenum));
 if (!cfg.picker && g_selpath)
  unlink(g_selpath);
 free(pselbuf);
 exit(1);
}
