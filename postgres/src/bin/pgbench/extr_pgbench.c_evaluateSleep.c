
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CState ;


 int atoi (char*) ;
 int fprintf (int ,char*,char*,char*) ;
 char* getVariable (int *,char*) ;
 scalar_t__ pg_strcasecmp (char*,char*) ;
 int stderr ;

__attribute__((used)) static bool
evaluateSleep(CState *st, int argc, char **argv, int *usecs)
{
 char *var;
 int usec;

 if (*argv[1] == ':')
 {
  if ((var = getVariable(st, argv[1] + 1)) == ((void*)0))
  {
   fprintf(stderr, "%s: undefined variable \"%s\"\n",
     argv[0], argv[1]);
   return 0;
  }
  usec = atoi(var);
 }
 else
  usec = atoi(argv[1]);

 if (argc > 2)
 {
  if (pg_strcasecmp(argv[2], "ms") == 0)
   usec *= 1000;
  else if (pg_strcasecmp(argv[2], "s") == 0)
   usec *= 1000000;
 }
 else
  usec *= 1000000;

 *usecs = usec;
 return 1;
}
