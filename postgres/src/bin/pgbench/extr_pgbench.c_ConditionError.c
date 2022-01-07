
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*,int,char const*) ;
 int stderr ;

__attribute__((used)) static void
ConditionError(const char *desc, int cmdn, const char *msg)
{
 fprintf(stderr,
   "condition error in script \"%s\" command %d: %s\n",
   desc, cmdn, msg);
 exit(1);
}
