
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ BuiltinScript ;


 TYPE_1__* builtin_script ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int lengthof (TYPE_1__*) ;
 int listAvailableScripts () ;
 int stderr ;
 int strlen (char const*) ;
 scalar_t__ strncmp (int ,char const*,int) ;

__attribute__((used)) static const BuiltinScript *
findBuiltin(const char *name)
{
 int i,
    found = 0,
    len = strlen(name);
 const BuiltinScript *result = ((void*)0);

 for (i = 0; i < lengthof(builtin_script); i++)
 {
  if (strncmp(builtin_script[i].name, name, len) == 0)
  {
   result = &builtin_script[i];
   found++;
  }
 }


 if (found == 1)
  return result;


 if (found == 0)
  fprintf(stderr, "no builtin script found for name \"%s\"\n", name);
 else
  fprintf(stderr,
    "ambiguous builtin name: %d builtin scripts found for prefix \"%s\"\n", found, name);

 listAvailableScripts();
 exit(1);
}
