
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
struct TYPE_6__ {TYPE_1__ binary; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;
typedef int JsonValueList ;
typedef int JsonPathItem ;
typedef int JsonPathExecResult ;
typedef int JsonPathExecContext ;


 int Assert (int) ;
 int ERROR ;
 int elog (int ,char*,scalar_t__) ;
 int executeAnyItem (int *,int *,int ,int *,int,int,int,int,int) ;
 scalar_t__ jbvArray ;
 scalar_t__ jbvBinary ;

__attribute__((used)) static JsonPathExecResult
executeItemUnwrapTargetArray(JsonPathExecContext *cxt, JsonPathItem *jsp,
        JsonbValue *jb, JsonValueList *found,
        bool unwrapElements)
{
 if (jb->type != jbvBinary)
 {
  Assert(jb->type != jbvArray);
  elog(ERROR, "invalid jsonb array value type: %d", jb->type);
 }

 return executeAnyItem
  (cxt, jsp, jb->val.binary.data, found, 1, 1, 1,
   0, unwrapElements);
}
