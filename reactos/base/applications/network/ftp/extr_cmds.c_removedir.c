
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERROR ;
 int code ;
 scalar_t__ command (char*,char const*) ;
 int fflush (int ) ;
 int gets (int *) ;
 int * line ;
 int makeargv () ;
 int margc ;
 char** margv ;
 int printf (char*,...) ;
 int stdout ;
 int strcat (int *,char*) ;
 size_t strlen (int *) ;
 scalar_t__ verbose ;

void removedir(int argc, const char *argv[])
{

 if (argc < 2) {
  (void) strcat(line, " ");
  printf("(directory-name) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc < 2) {
  printf("usage: %s directory-name\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 if (command("RMD %s", argv[1]) == ERROR && code == 500) {
  if (verbose) {
   printf("RMD command not recognized, trying XRMD\n");
   (void) fflush(stdout);
  }
  (void) command("XRMD %s", argv[1]);
 }
}
