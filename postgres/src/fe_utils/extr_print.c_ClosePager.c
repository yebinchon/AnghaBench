
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* _ (char*) ;
 scalar_t__ cancel_pressed ;
 int fprintf (int *,char*) ;
 int pclose (int *) ;
 int restore_sigpipe_trap () ;
 int * stdout ;

void
ClosePager(FILE *pagerpipe)
{
 if (pagerpipe && pagerpipe != stdout)
 {
  if (cancel_pressed)
   fprintf(pagerpipe, _("Interrupted\n"));

  pclose(pagerpipe);
  restore_sigpipe_trap();
 }
}
