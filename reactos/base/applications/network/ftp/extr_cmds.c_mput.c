
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jmp_buf ;


 int MAXPATHLEN ;
 int blkfree (char**) ;
 int code ;
 scalar_t__ confirm (char const*,char const*) ;
 int doglob ;
 char const* domap (char const*) ;
 char* dotrans (char const*) ;
 int fflush (int ) ;
 int free (char*) ;
 scalar_t__ fromatty ;
 int gets (int *) ;
 char** glob (char const*) ;
 char* globerr ;
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
 scalar_t__ proxy ;
 char* remglob (char const**,int ) ;
 int sendrequest (char*,char const*,char const*,int) ;
 int setjmp (int ) ;
 int stdout ;
 int strcat (int *,char*) ;
 size_t strlen (int *) ;
 scalar_t__ sunique ;

void mput(int argc, const char *argv[])
{
 register int i;
 int ointer;
 extern jmp_buf jabort;
 const char *tp;

 if (argc < 2) {
  (void) strcat(line, " ");
  printf("(local-files) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc < 2) {
  printf("usage:%s local-files\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 mname = argv[0];
 mflag = 1;

 (void) setjmp(jabort);
 if (proxy) {
  const char *cp;
  char *tp2, tmpbuf[MAXPATHLEN];

  while ((cp = remglob(argv,0)) != ((void*)0)) {
   if (*cp == 0) {
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
    sendrequest((sunique) ? "STOU" : "STOR",
        cp, tp, cp != tp || !interactive);
    if (!mflag && fromatty) {
     ointer = interactive;
     interactive = 1;
     if (confirm("Continue with","mput")) {
      mflag++;
     }
     interactive = ointer;
    }
   }
  }

  mflag = 0;
  return;
 }
 for (i = 1; i < argc; i++) {
  register char **cpp, **gargs;

  if (!doglob) {
   if (mflag && confirm(argv[0], argv[i])) {
    tp = (ntflag) ? dotrans(argv[i]) : argv[i];
    tp = (mapflag) ? domap(tp) : tp;
    sendrequest((sunique) ? "STOU" : "STOR",
        argv[i], tp, tp != argv[i] || !interactive);
    if (!mflag && fromatty) {
     ointer = interactive;
     interactive = 1;
     if (confirm("Continue with","mput")) {
      mflag++;
     }
     interactive = ointer;
    }
   }
   continue;
  }
  gargs = glob(argv[i]);
  if (globerr != ((void*)0)) {
   printf("%s\n", globerr);
   (void) fflush(stdout);
   if (gargs) {
    blkfree(gargs);
    free((char *)gargs);
   }
   continue;
  }
  for (cpp = gargs; cpp && *cpp != ((void*)0); cpp++) {
   if (mflag && confirm(argv[0], *cpp)) {
    tp = (ntflag) ? dotrans(*cpp) : *cpp;
    tp = (mapflag) ? domap(tp) : tp;
    sendrequest((sunique) ? "STOU" : "STOR",
        *cpp, tp, *cpp != tp || !interactive);
    if (!mflag && fromatty) {
     ointer = interactive;
     interactive = 1;
     if (confirm("Continue with","mput")) {
      mflag++;
     }
     interactive = ointer;
    }
   }
  }
  if (gargs != ((void*)0)) {
   blkfree(gargs);
   free((char *)gargs);
  }
 }

 mflag = 0;
}
