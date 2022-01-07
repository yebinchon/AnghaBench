
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int command (char*,char const*,char const*) ;
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

void do_chmod(int argc, const char *argv[])
{
 if (argc == 2) {
  printf("usage: %s mode file-name\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 if (argc < 3) {
  (void) strcat(line, " ");
  printf("(mode and file-name) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc != 3) {
  printf("usage: %s mode file-name\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 (void)command("SITE CHMOD %s %s", argv[1], argv[2]);
}
