
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_5__ {char* svalue; TYPE_1__ value; } ;
typedef TYPE_2__ Variable ;
typedef int CState ;


 int PGBT_NO_VALUE ;
 int free (char*) ;
 TYPE_2__* lookupCreateVariable (int *,char const*,char*) ;
 char* pg_strdup (char const*) ;

__attribute__((used)) static bool
putVariable(CState *st, const char *context, char *name, const char *value)
{
 Variable *var;
 char *val;

 var = lookupCreateVariable(st, context, name);
 if (!var)
  return 0;


 val = pg_strdup(value);

 if (var->svalue)
  free(var->svalue);
 var->svalue = val;
 var->value.type = PGBT_NO_VALUE;

 return 1;
}
