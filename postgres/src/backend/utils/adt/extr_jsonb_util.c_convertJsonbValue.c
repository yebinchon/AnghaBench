
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
typedef int StringInfo ;
typedef TYPE_1__ JsonbValue ;
typedef int JEntry ;


 int ERROR ;
 scalar_t__ IsAJsonbScalar (TYPE_1__*) ;
 int check_stack_depth () ;
 int convertJsonbArray (int ,int *,TYPE_1__*,int) ;
 int convertJsonbObject (int ,int *,TYPE_1__*,int) ;
 int convertJsonbScalar (int ,int *,TYPE_1__*) ;
 int elog (int ,char*) ;
 scalar_t__ jbvArray ;
 scalar_t__ jbvObject ;

__attribute__((used)) static void
convertJsonbValue(StringInfo buffer, JEntry *header, JsonbValue *val, int level)
{
 check_stack_depth();

 if (!val)
  return;
 if (IsAJsonbScalar(val))
  convertJsonbScalar(buffer, header, val);
 else if (val->type == jbvArray)
  convertJsonbArray(buffer, header, val, level);
 else if (val->type == jbvObject)
  convertJsonbObject(buffer, header, val, level);
 else
  elog(ERROR, "unknown type of jsonb container to convert");
}
