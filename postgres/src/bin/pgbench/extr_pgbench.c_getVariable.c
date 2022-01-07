
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stringform ;
struct TYPE_5__ {int dval; int ival; scalar_t__ bval; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ u; } ;
struct TYPE_7__ {char* svalue; TYPE_2__ value; } ;
typedef TYPE_3__ Variable ;
typedef int CState ;


 int Assert (int) ;
 double DBL_DIG ;
 char* INT64_FORMAT ;
 scalar_t__ PGBT_BOOLEAN ;
 scalar_t__ PGBT_DOUBLE ;
 scalar_t__ PGBT_INT ;
 scalar_t__ PGBT_NO_VALUE ;
 scalar_t__ PGBT_NULL ;
 TYPE_3__* lookupVariable (int *,char*) ;
 char* pg_strdup (char*) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static char *
getVariable(CState *st, char *name)
{
 Variable *var;
 char stringform[64];

 var = lookupVariable(st, name);
 if (var == ((void*)0))
  return ((void*)0);

 if (var->svalue)
  return var->svalue;


 Assert(var->value.type != PGBT_NO_VALUE);
 if (var->value.type == PGBT_NULL)
  snprintf(stringform, sizeof(stringform), "NULL");
 else if (var->value.type == PGBT_BOOLEAN)
  snprintf(stringform, sizeof(stringform),
     "%s", var->value.u.bval ? "true" : "false");
 else if (var->value.type == PGBT_INT)
  snprintf(stringform, sizeof(stringform),
     INT64_FORMAT, var->value.u.ival);
 else if (var->value.type == PGBT_DOUBLE)
  snprintf(stringform, sizeof(stringform),
     "%.*g", DBL_DIG, var->value.u.dval);
 else
  Assert(0);
 var->svalue = pg_strdup(stringform);
 return var->svalue;
}
