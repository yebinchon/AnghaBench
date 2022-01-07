
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COMPLETE ;
 scalar_t__ allbinary ;
 scalar_t__ atoi (char const*) ;
 scalar_t__ autologin ;
 int code ;
 scalar_t__ command (char*) ;
 int connected ;
 scalar_t__ debug ;
 int fflush (int ) ;
 int gets (int *) ;
 char* hookup (char const*,scalar_t__) ;
 char* hostname ;
 scalar_t__ htons (scalar_t__) ;
 char* index (char*,char) ;
 int * line ;
 int login (char const*) ;
 int makeargv () ;
 int margc ;
 char** margv ;
 scalar_t__ portnum ;
 int printf (char*,...) ;
 char* reply_string ;
 int setbinary (int ,int *) ;
 int stdout ;
 int strcat (int *,char*) ;
 size_t strlen (int *) ;
 int strncmp (char*,char*,int) ;
 char* typename ;
 int verbose ;

void setpeer(int argc, const char *argv[])
{
 char *host;

 if (connected) {
  printf("Already connected to %s, use close first.\n",
   hostname);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 if (argc < 2) {
  (void) strcat(line, " ");
  printf("(to) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc > 3) {
  printf("usage: %s host-name [port]\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 if (argc > 2) {
  portnum = atoi(argv[2]);
  if (portnum <= 0) {
   printf("%s: bad port number-- %s\n", argv[1], argv[2]);
   printf ("usage: %s host-name [port]\n", argv[0]);
   (void) fflush(stdout);
   code = -1;
   return;
  }
  portnum = htons(portnum);
 }
 host = hookup(argv[1], portnum);
 if (host) {
  int overbose;
  connected = 1;
  if (autologin)
   (void) login(argv[1]);

  overbose = verbose;
  if (debug == 0)
   verbose = -1;
  allbinary = 0;
  if (command("SYST") == COMPLETE && overbose) {
   register char *cp, c;
   cp = index(reply_string+4, ' ');
   if (cp == ((void*)0))
    cp = index(reply_string+4, '\r');
   if (cp) {
    if (cp[-1] == '.')
     cp--;
    c = *cp;
    *cp = '\0';
   }

   printf("Remote system type is %s.\n",
    reply_string+4);
   if (cp)
    *cp = c;
  }
  if (!strncmp(reply_string, "215 UNIX Type: L8", 17)) {
   setbinary(0, ((void*)0));

   if (overbose)
       printf("Using %s mode to transfer files.\n",
    typename);
  } else if (overbose &&
      !strncmp(reply_string, "215 TOPS20", 10)) {
   printf(
"Remember to set tenex mode when transfering binary files from this machine.\n");
  }
  verbose = overbose;
 }
 (void) fflush(stdout);
}
