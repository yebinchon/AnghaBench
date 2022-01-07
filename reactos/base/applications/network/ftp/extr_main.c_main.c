
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct servent {int s_port; } ;
typedef int WSADATA ;
typedef int WORD ;
struct TYPE_4__ {char* pw_dir; } ;


 int FORM_N ;
 int MAKEWORD (int,int) ;
 int MAXPATHLEN ;
 int MODE_S ;
 int O_BINARY ;
 int SO_DEBUG ;
 int STRU_F ;
 int TYPE_A ;
 int WSAStartup (int ,int *) ;
 int _fmode ;
 int autologin ;
 char* bytename ;
 int bytesize ;
 int cmdscanner (int) ;
 scalar_t__ cpend ;
 int crflag ;
 int debug ;
 int doglob ;
 int exit (int) ;
 int form ;
 char* formname ;
 int fprintf (int ,char*,...) ;
 int fromatty ;
 char* getlogin () ;
 TYPE_1__* getpwnam (char const*) ;
 TYPE_1__* getpwuid (int ) ;
 struct servent* getservbyname (char*,char*) ;
 int getuid () ;
 char* home ;
 int interactive ;
 int mode ;
 char* modename ;
 int options ;
 int passivemode ;
 int portnum ;
 scalar_t__ proxy ;
 TYPE_1__* pw ;
 scalar_t__ setjmp (int ) ;
 int setpeer (int,char const**) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcpy (char*,char*) ;
 int stru ;
 char* structname ;
 int toplevel ;
 int trace ;
 int type ;
 char* typename ;
 int verbose ;

int main(int argc, const char *argv[])
{
 const char *cp;
 int top;




        int err;
        WORD wVerReq;

        WSADATA WSAData;
        struct servent *sp;




        _fmode = O_BINARY;

        wVerReq = MAKEWORD(1,1);

        err = WSAStartup(wVerReq, &WSAData);
        if (err != 0)
        {
           fprintf(stderr, "Could not initialize Windows socket interface.");
           exit(1);
        }

 sp = getservbyname("ftp", "tcp");
 if (sp == 0) {
  fprintf(stderr, "ftp: ftp/tcp: unknown service\n");
  exit(1);
 }

        portnum = sp->s_port;


 doglob = 1;
 interactive = 1;
 autologin = 1;
 argc--, argv++;
 while (argc > 0 && **argv == '-') {
  for (cp = *argv + 1; *cp; cp++)
   switch (*cp) {

   case 'd':
    options |= SO_DEBUG;
    debug++;
    break;

   case 'v':
    verbose++;
    break;

   case 't':
    trace++;
    break;

   case 'i':
    interactive = 0;
    break;

   case 'n':
    autologin = 0;
    break;

   case 'g':
    doglob = 0;
    break;

   default:
    fprintf(stdout,
      "ftp: %c: unknown option\n", *cp);
    exit(1);
   }
  argc--, argv++;
 }

        fromatty = 1;



 (void) strcpy(typename, "ascii"), type = TYPE_A;
 (void) strcpy(formname, "non-print"), form = FORM_N;
 (void) strcpy(modename, "stream"), mode = MODE_S;
 (void) strcpy(structname, "file"), stru = STRU_F;
 (void) strcpy(bytename, "8"), bytesize = 8;
 if (fromatty)
  verbose++;
 cpend = 0;
 proxy = 0;
    passivemode = 1;
 crflag = 1;
        strcpy(home, "C:/");
 if (argc > 0) {
  if (setjmp(toplevel))
   exit(0);


  setpeer(argc + 1, argv - 1);
 }
 top = setjmp(toplevel) == 0;
 if (top) {


 }
 for (;;) {
  cmdscanner(top);
  top = 1;
 }
}
