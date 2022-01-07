
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ap ;
 int command (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int strncat (char*,char const*,scalar_t__) ;
 int strncpy (char*,char const*,int) ;

void account(int argc, const char *argv[])
{
 char acct[50], *getpass(), *ap;

 if (argc > 1) {
  ++argv;
  --argc;
  (void) strncpy(acct,*argv,49);
  acct[49] = '\0';
  while (argc > 1) {
   --argc;
   ++argv;
   (void) strncat(acct,*argv, 49-strlen(acct));
  }
  ap = acct;
 }
 else {
  ap = getpass("Account:");
 }
 (void) command("ACCT %s", ap);
}
