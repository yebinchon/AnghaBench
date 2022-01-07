
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pwd2 ;
typedef int pwd1 ;
typedef int FILE ;


 char* _ (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fflush (int ) ;
 int fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int ,char*) ;
 int pg_log_error (char*,int ) ;
 int pg_strdup (char*) ;
 int printf (char*) ;
 int pwfilename ;
 scalar_t__ pwprompt ;
 int simple_prompt (char*,char*,int,int) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int superuser_password ;

__attribute__((used)) static void
get_su_pwd(void)
{
 char pwd1[100];
 char pwd2[100];

 if (pwprompt)
 {



  printf("\n");
  fflush(stdout);
  simple_prompt("Enter new superuser password: ", pwd1, sizeof(pwd1), 0);
  simple_prompt("Enter it again: ", pwd2, sizeof(pwd2), 0);
  if (strcmp(pwd1, pwd2) != 0)
  {
   fprintf(stderr, _("Passwords didn't match.\n"));
   exit(1);
  }
 }
 else
 {
  FILE *pwf = fopen(pwfilename, "r");
  int i;

  if (!pwf)
  {
   pg_log_error("could not open file \"%s\" for reading: %m",
       pwfilename);
   exit(1);
  }
  if (!fgets(pwd1, sizeof(pwd1), pwf))
  {
   if (ferror(pwf))
    pg_log_error("could not read password from file \"%s\": %m",
        pwfilename);
   else
    pg_log_error("password file \"%s\" is empty",
        pwfilename);
   exit(1);
  }
  fclose(pwf);

  i = strlen(pwd1);
  while (i > 0 && (pwd1[i - 1] == '\r' || pwd1[i - 1] == '\n'))
   pwd1[--i] = '\0';
 }

 superuser_password = pg_strdup(pwd1);
}
