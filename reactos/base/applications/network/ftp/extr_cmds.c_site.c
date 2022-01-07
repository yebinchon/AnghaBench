
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZ ;
 scalar_t__ PRELIM ;
 int code ;
 scalar_t__ command (char*) ;
 int fflush (int ) ;
 scalar_t__ getreply (int ) ;
 int gets (char*) ;
 char* line ;
 int makeargv () ;
 int margc ;
 char** margv ;
 int printf (char*,...) ;
 int stdout ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

void site(int argc, const char *argv[])
{
 int i;
 char buf[BUFSIZ];

 if (argc < 2) {
  (void) strcat(line, " ");
  printf("(arguments to SITE command) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc < 2) {
  printf("usage: %s line-to-send\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 (void) strcpy(buf, "SITE ");
 (void) strcat(buf, argv[1]);
 for (i = 2; i < argc; i++) {
  (void) strcat(buf, " ");
  (void) strcat(buf, argv[i]);
 }
 if (command(buf) == PRELIM) {
  while (getreply(0) == PRELIM);
 }
}
