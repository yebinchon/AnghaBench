
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*) ;
 scalar_t__ logfile ;
 scalar_t__ stdout ;

__attribute__((used)) static void
status_end(void)
{
 fprintf(stdout, "\n");
 fflush(stdout);
 if (logfile)
  fprintf(logfile, "\n");
}
