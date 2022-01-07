
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 char* domap (char const*) ;
 char* dotrans (char const*) ;
 int fflush (int ) ;
 int gets (int *) ;
 int globulize (char const**) ;
 int * line ;
 int makeargv () ;
 scalar_t__ mapflag ;
 int margc ;
 char** margv ;
 scalar_t__ ntflag ;
 int printf (char*,...) ;
 int sendrequest (char const*,char const*,char const*,int) ;
 int stdout ;
 int strcat (int *,char*) ;
 size_t strlen (int *) ;
 scalar_t__ sunique ;

void put(int argc, const char *argv[])
{
 const char *cmd;
 int loc = 0;
 const char *oldargv1, *oldargv2;

 if (argc == 2) {
  argc++;
  argv[2] = argv[1];
  loc++;
 }
 if (argc < 2) {
  (void) strcat(line, " ");
  printf("(local-file) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc < 2) {
usage:
  printf("usage:%s local-file remote-file\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 if (argc < 3) {
  (void) strcat(line, " ");
  printf("(remote-file) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc < 3)
  goto usage;
 oldargv1 = argv[1];
 oldargv2 = argv[2];
 if (!globulize(&argv[1])) {
  code = -1;
  return;
 }




 if (argv[1] != oldargv1 && argv[2] == oldargv1) {
  argv[2] = argv[1];
 }
 cmd = (argv[0][0] == 'a') ? "APPE" : ((sunique) ? "STOU" : "STOR");
 if (loc && ntflag) {
  argv[2] = dotrans(argv[2]);
 }
 if (loc && mapflag) {
  argv[2] = domap(argv[2]);
 }
 sendrequest(cmd, argv[1], argv[2],
     argv[1] != oldargv1 || argv[2] != oldargv2);
}
