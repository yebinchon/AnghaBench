
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jmp_buf ;


 int code ;
 scalar_t__ confirm (char*,char const*) ;
 int fflush (int ) ;
 scalar_t__ fromatty ;
 int gets (int *) ;
 int globulize (char const**) ;
 int interactive ;
 int * line ;
 int makeargv () ;
 int margc ;
 char** margv ;
 int mflag ;
 char const* mname ;
 int printf (char*,...) ;
 int recvrequest (char const*,char const*,char const*,char*,int ) ;
 int setjmp (int ) ;
 int stdout ;
 int strcat (int *,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (int *) ;

void mls(int argc, const char *argv[])
{
 const char *cmd, *dest;
 char mode[1];
 int ointer, i;
 extern jmp_buf jabort;

 if (argc < 2) {
  (void) strcat(line, " ");
  printf("(remote-files) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc < 3) {
  (void) strcat(line, " ");
  printf("(local-file) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc < 3) {
  printf("usage:%s remote-files local-file\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 dest = argv[argc - 1];
 argv[argc - 1] = ((void*)0);
 if (strcmp(dest, "-") && *dest != '|')
  if (!globulize(&dest) || !confirm("output to local-file:", dest)) {
   code = -1;
   return;
 }
 cmd = argv[0][1] == 'l' ? "NLST" : "LIST";
 mname = argv[0];
 mflag = 1;

 (void) setjmp(jabort);
 for (i = 1; mflag && i < argc-1; ++i) {
  *mode = (i == 1) ? 'w' : 'a';
  recvrequest(cmd, dest, argv[i], mode, 0);
  if (!mflag && fromatty) {
   ointer = interactive;
   interactive = 1;
   if (confirm("Continue with", argv[0])) {
    mflag ++;
   }
   interactive = ointer;
  }
 }

 mflag = 0;
}
