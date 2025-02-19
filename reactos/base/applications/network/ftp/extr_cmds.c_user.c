
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acct ;


 int COMPLETE ;
 int CONTINUE ;
 int code ;
 int command (char*,char const*) ;
 int fflush (int ) ;
 int fgets (char*,int,int ) ;
 int fprintf (int ,char*) ;
 int gets (char*) ;
 char* line ;
 int makeargv () ;
 int margc ;
 char** margv ;
 int printf (char*,...) ;
 int stdin ;
 int stdout ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

void user(int argc, const char *argv[])
{
 char acct[80], *getpass();
 int n, aflag = 0;

 if (argc < 2) {
  (void) strcat(line, " ");
  printf("(username) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc > 4) {
  printf("usage: %s username [password] [account]\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 n = command("USER %s", argv[1]);
 if (n == CONTINUE) {
  if (argc < 3 )
   argv[2] = getpass("Password: "), argc++;
  n = command("PASS %s", argv[2]);
 }
 if (n == CONTINUE) {
  if (argc < 4) {
   printf("Account: "); (void) fflush(stdout);
   (void) fflush(stdout);
   (void) fgets(acct, sizeof(acct) - 1, stdin);
   acct[strlen(acct) - 1] = '\0';
   argv[3] = acct; argc++;
  }
  n = command("ACCT %s", argv[3]);
  aflag++;
 }
 if (n != COMPLETE) {
  fprintf(stdout, "Login failed.\n");
  (void) fflush(stdout);
  return;
 }
 if (!aflag && argc == 4) {
  (void) command("ACCT %s", argv[3]);
 }
}
