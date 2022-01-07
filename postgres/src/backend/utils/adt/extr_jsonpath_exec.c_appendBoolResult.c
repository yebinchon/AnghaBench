
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int boolean; } ;
struct TYPE_5__ {TYPE_1__ val; int type; } ;
typedef TYPE_2__ JsonbValue ;
typedef int JsonValueList ;
typedef int JsonPathItem ;
typedef int JsonPathExecResult ;
typedef int JsonPathExecContext ;
typedef scalar_t__ JsonPathBool ;


 int executeNextItem (int *,int *,int *,TYPE_2__*,int *,int) ;
 int jbvBool ;
 int jbvNull ;
 scalar_t__ jpbTrue ;
 scalar_t__ jpbUnknown ;
 int jperOk ;
 int jspGetNext (int *,int *) ;

__attribute__((used)) static JsonPathExecResult
appendBoolResult(JsonPathExecContext *cxt, JsonPathItem *jsp,
     JsonValueList *found, JsonPathBool res)
{
 JsonPathItem next;
 JsonbValue jbv;

 if (!jspGetNext(jsp, &next) && !found)
  return jperOk;

 if (res == jpbUnknown)
 {
  jbv.type = jbvNull;
 }
 else
 {
  jbv.type = jbvBool;
  jbv.val.boolean = res == jpbTrue;
 }

 return executeNextItem(cxt, jsp, &next, &jbv, found, 1);
}
