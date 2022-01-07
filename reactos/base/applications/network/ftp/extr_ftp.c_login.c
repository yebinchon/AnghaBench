
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_2__ {int mac_name; } ;


 int COMPLETE ;
 int CONTINUE ;
 int code ;
 int command (char*,char const*) ;
 int domacro (int ,int ) ;
 int fflush (int ) ;
 int fgets (char*,int,int ) ;
 int fprintf (int ,char*) ;
 char* getpass (char*) ;
 int line ;
 int macnum ;
 TYPE_1__* macros ;
 int makeargv () ;
 int margc ;
 int margv ;
 int printf (char*,char const*,...) ;
 scalar_t__ proxy ;
 int ruserpass (char const*,char**,char**,char**) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int strcmp (char*,int ) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;

int login(const char *host)
{
 char tmp[80];
 char *puser, *ppass, *pacct;
 const char *user, *pass, *acct;
 int n, aflag = 0;

 user = pass = acct = 0;
 n = ruserpass(host, &puser, &ppass, &pacct);
 if (n < 0) {
  code = -1;
  return(0);
 }
 if (0 != n) {
  user = puser;
  pass = ppass;
  acct = pacct;
 }
 while (user == ((void*)0)) {
  const char *myname = "none";

  if (myname)
   printf("Name (%s:%s): ", host, myname);
  else
   printf("Name (%s): ", host);
  (void) fflush(stdout);
  (void) fgets(tmp, sizeof(tmp) - 1, stdin);
  tmp[strlen(tmp) - 1] = '\0';
  if (*tmp == '\0')
   user = myname;
  else
   user = tmp;
 }
 n = command("USER %s", user);
 if (n == CONTINUE) {
  if (pass == ((void*)0))
   pass = getpass("Password:");
  n = command("PASS %s", pass);
  fflush(stdin);
 }
 if (n == CONTINUE) {
  aflag++;
  acct = getpass("Account:");
  n = command("ACCT %s", acct);
 }
 if (n != COMPLETE) {
  fprintf(stderr, "Login failed.\n");
  return (0);
 }
 if (!aflag && acct != ((void*)0))
  (void) command("ACCT %s", acct);
 if (proxy)
  return(1);
 for (n = 0; n < macnum; ++n) {
  if (!strcmp("init", macros[n].mac_name)) {
   (void) strcpy(line, "$init");
   makeargv();
   domacro(margc, margv);
   break;
  }
 }
 return (1);
}
