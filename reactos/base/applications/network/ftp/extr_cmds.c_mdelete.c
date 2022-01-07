
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jmp_buf ;


 int code ;
 int command (char*,char const*) ;
 scalar_t__ confirm (char const*,char const*) ;
 int fflush (int ) ;
 scalar_t__ fromatty ;
 int gets (int *) ;
 int interactive ;
 int * line ;
 int makeargv () ;
 int margc ;
 char** margv ;
 int mflag ;
 char const* mname ;
 int printf (char*,...) ;
 char* remglob (char const**,int ) ;
 int setjmp (int ) ;
 int stdout ;
 int strcat (int *,char*) ;
 size_t strlen (int *) ;

void mdelete(int argc, const char *argv[])
{
 const char *cp;
 int ointer;
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
 if (argc < 2) {
  printf("usage:%s remote-files\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 mname = argv[0];
 mflag = 1;

 (void) setjmp(jabort);
 while ((cp = remglob(argv,0)) != ((void*)0)) {
  if (*cp == '\0') {
   mflag = 0;
   continue;
  }
  if (mflag && confirm(argv[0], cp)) {
   (void) command("DELE %s", cp);
   if (!mflag && fromatty) {
    ointer = interactive;
    interactive = 1;
    if (confirm("Continue with", "mdelete")) {
     mflag++;
    }
    interactive = ointer;
   }
  }
 }

 mflag = 0;
}
