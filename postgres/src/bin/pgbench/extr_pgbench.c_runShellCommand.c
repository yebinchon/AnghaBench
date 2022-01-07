
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
typedef int FILE ;
typedef int CState ;


 int SHELL_COMMAND_SIZE ;
 int * fgets (char*,int,int *) ;
 int fprintf (int ,char*,char*,...) ;
 char* getVariable (int *,char*) ;
 scalar_t__ isspace (unsigned char) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ pclose (int *) ;
 int * popen (char*,char*) ;
 int printf (char*,char*,char*) ;
 int putVariableInt (int *,char*,char*,int) ;
 int stderr ;
 int strlen (char*) ;
 scalar_t__ strtol (char*,char**,int) ;
 scalar_t__ system (char*) ;
 int timer_exceeded ;

__attribute__((used)) static bool
runShellCommand(CState *st, char *variable, char **argv, int argc)
{
 char command[SHELL_COMMAND_SIZE];
 int i,
    len = 0;
 FILE *fp;
 char res[64];
 char *endptr;
 int retval;
 for (i = 0; i < argc; i++)
 {
  char *arg;
  int arglen;

  if (argv[i][0] != ':')
  {
   arg = argv[i];
  }
  else if (argv[i][1] == ':')
  {
   arg = argv[i] + 1;
  }
  else if ((arg = getVariable(st, argv[i] + 1)) == ((void*)0))
  {
   fprintf(stderr, "%s: undefined variable \"%s\"\n",
     argv[0], argv[i]);
   return 0;
  }

  arglen = strlen(arg);
  if (len + arglen + (i > 0 ? 1 : 0) >= SHELL_COMMAND_SIZE - 1)
  {
   fprintf(stderr, "%s: shell command is too long\n", argv[0]);
   return 0;
  }

  if (i > 0)
   command[len++] = ' ';
  memcpy(command + len, arg, arglen);
  len += arglen;
 }

 command[len] = '\0';


 if (variable == ((void*)0))
 {
  if (system(command))
  {
   if (!timer_exceeded)
    fprintf(stderr, "%s: could not launch shell command\n", argv[0]);
   return 0;
  }
  return 1;
 }


 if ((fp = popen(command, "r")) == ((void*)0))
 {
  fprintf(stderr, "%s: could not launch shell command\n", argv[0]);
  return 0;
 }
 if (fgets(res, sizeof(res), fp) == ((void*)0))
 {
  if (!timer_exceeded)
   fprintf(stderr, "%s: could not read result of shell command\n", argv[0]);
  (void) pclose(fp);
  return 0;
 }
 if (pclose(fp) < 0)
 {
  fprintf(stderr, "%s: could not close shell command\n", argv[0]);
  return 0;
 }


 retval = (int) strtol(res, &endptr, 10);
 while (*endptr != '\0' && isspace((unsigned char) *endptr))
  endptr++;
 if (*res == '\0' || *endptr != '\0')
 {
  fprintf(stderr, "%s: shell command must return an integer (not \"%s\")\n",
    argv[0], res);
  return 0;
 }
 if (!putVariableInt(st, "setshell", variable, retval))
  return 0;




 return 1;
}
