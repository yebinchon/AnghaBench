
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ type; } ;
struct TYPE_19__ {int root; } ;
struct TYPE_16__ {char* val; int len; } ;
struct TYPE_17__ {TYPE_1__ string; } ;
struct TYPE_18__ {TYPE_2__ val; int type; } ;
typedef TYPE_3__ JsonbValue ;
typedef TYPE_4__ Jsonb ;
typedef TYPE_5__ JsonPathItem ;
typedef int JsonPathExecContext ;


 int Assert (int) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int JB_FOBJECT ;
 int JsonbInitBinary (TYPE_3__*,TYPE_4__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 TYPE_3__* findJsonbValueFromContainer (int *,int ,TYPE_3__*) ;
 int jbvNull ;
 int jbvString ;
 scalar_t__ jpiVariable ;
 char* jspGetString (TYPE_5__*,int*) ;
 int pfree (TYPE_3__*) ;
 int pnstrdup (char*,int) ;
 int setBaseObject (int *,TYPE_3__*,int) ;

__attribute__((used)) static void
getJsonPathVariable(JsonPathExecContext *cxt, JsonPathItem *variable,
     Jsonb *vars, JsonbValue *value)
{
 char *varName;
 int varNameLength;
 JsonbValue tmp;
 JsonbValue *v;

 if (!vars)
 {
  value->type = jbvNull;
  return;
 }

 Assert(variable->type == jpiVariable);
 varName = jspGetString(variable, &varNameLength);
 tmp.type = jbvString;
 tmp.val.string.val = varName;
 tmp.val.string.len = varNameLength;

 v = findJsonbValueFromContainer(&vars->root, JB_FOBJECT, &tmp);

 if (v)
 {
  *value = *v;
  pfree(v);
 }
 else
 {
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("could not find jsonpath variable \"%s\"",
      pnstrdup(varName, varNameLength))));
 }

 JsonbInitBinary(&tmp, vars);
 setBaseObject(cxt, &tmp, 1);
}
