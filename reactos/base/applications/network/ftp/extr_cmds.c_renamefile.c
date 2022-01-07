
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CONTINUE ;
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

void renamefile(int argc, const char *argv[])
{

 if (argc < 2) {
  (void) strcat(line, " ");
  printf("(from-name) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc < 2) {
usage:
  printf("%s from-name to-name\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 if (argc < 3) {
  (void) strcat(line, " ");
  printf("(to-name) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc < 3)
  goto usage;
 if (command("RNFR %s", argv[1]) == CONTINUE)
  (void) command("RNTO %s", argv[2]);
}
