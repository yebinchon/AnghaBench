
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {int (* c_handler ) (int,char const**) ;scalar_t__ c_conn; int c_proxy; } ;
typedef int jmp_buf ;


 int code ;
 scalar_t__ connected ;
 int fflush (int ) ;
 int gets (int *) ;
 int * line ;
 int makeargv () ;
 int margc ;
 char** margv ;
 int printf (char*,...) ;
 int proxflag ;
 int pswitch (int) ;
 scalar_t__ setjmp (int ) ;
 int stdout ;
 int strcat (int *,char*) ;
 size_t strlen (int *) ;
 int stub1 (int,char const**) ;

void doproxy(int argc, const char *argv[])
{
 register struct cmd *c;
 struct cmd *getcmd();

 extern jmp_buf abortprox;

 if (argc < 2) {
  (void) strcat(line, " ");
  printf("(command) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc < 2) {
  printf("usage:%s command\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 c = getcmd(argv[1]);
 if (c == (struct cmd *) -1) {
  printf("?Ambiguous command\n");
  (void) fflush(stdout);
  code = -1;
  return;
 }
 if (c == 0) {
  printf("?Invalid command\n");
  (void) fflush(stdout);
  code = -1;
  return;
 }
 if (!c->c_proxy) {
  printf("?Invalid proxy command\n");
  (void) fflush(stdout);
  code = -1;
  return;
 }
 if (setjmp(abortprox)) {
  code = -1;
  return;
 }

 pswitch(1);
 if (c->c_conn && !connected) {
  printf("Not connected\n");
  (void) fflush(stdout);
  pswitch(0);

  code = -1;
  return;
 }
 (*c->c_handler)(argc-1, argv+1);
 if (connected) {
  proxflag = 1;
 }
 else {
  proxflag = 0;
 }
 pswitch(0);

}
