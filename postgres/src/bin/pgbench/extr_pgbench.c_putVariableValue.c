
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int * svalue; } ;
typedef TYPE_1__ Variable ;
typedef int PgBenchValue ;
typedef int CState ;


 int free (int *) ;
 TYPE_1__* lookupCreateVariable (int *,char const*,char*) ;

__attribute__((used)) static bool
putVariableValue(CState *st, const char *context, char *name,
     const PgBenchValue *value)
{
 Variable *var;

 var = lookupCreateVariable(st, context, name);
 if (!var)
  return 0;

 if (var->svalue)
  free(var->svalue);
 var->svalue = ((void*)0);
 var->value = *value;

 return 1;
}
