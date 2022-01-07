
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jmp_buf ;


 int MAXPATHLEN ;
 int code ;
 scalar_t__ confirm (char const*,char const*) ;
 char* domap (char const*) ;
 char* dotrans (char const*) ;
 int fflush (int ) ;
 scalar_t__ fromatty ;
 int gets (int *) ;
 int interactive ;
 int islower (char const) ;
 scalar_t__ isupper (char) ;
 int * line ;
 int makeargv () ;
 scalar_t__ mapflag ;
 int margc ;
 char** margv ;
 scalar_t__ mcase ;
 int mflag ;
 char const* mname ;
 scalar_t__ ntflag ;
 int printf (char*,...) ;
 int proxy ;
 int recvrequest (char*,char const*,char const*,char*,int) ;
 char* remglob (char const**,int ) ;
 int setjmp (int ) ;
 int stdout ;
 int strcat (int *,char*) ;
 size_t strlen (int *) ;

void mget(int argc, const char *argv[])
{
 const char *cp, *tp;
    char *tp2, tmpbuf[MAXPATHLEN];
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
 while ((cp = remglob(argv,proxy)) != ((void*)0)) {
  if (*cp == '\0') {
   mflag = 0;
   continue;
  }
  if (mflag && confirm(argv[0], cp)) {
   tp = cp;
   if (mcase) {
    while (*tp && !islower(*tp)) {
     tp++;
    }
    if (!*tp) {
     tp = cp;
     tp2 = tmpbuf;
     while ((*tp2 = *tp)) {
      if (isupper(*tp2)) {
       *tp2 = 'a' + *tp2 - 'A';
      }
      tp++;
      tp2++;
     }
    }
    tp = tmpbuf;
   }
   if (ntflag) {
    tp = dotrans(tp);
   }
   if (mapflag) {
    tp = domap(tp);
   }
   recvrequest("RETR", tp, cp, "w",
       tp != cp || !interactive);
   if (!mflag && fromatty) {
    ointer = interactive;
    interactive = 1;
    if (confirm("Continue with","mget")) {
     mflag++;
    }
    interactive = ointer;
   }
  }
 }

 mflag = 0;
}
