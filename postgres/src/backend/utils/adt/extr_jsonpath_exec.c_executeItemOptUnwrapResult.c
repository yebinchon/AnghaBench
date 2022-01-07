
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int member_0; } ;
struct TYPE_15__ {scalar_t__ type; } ;
typedef TYPE_1__ JsonbValue ;
typedef int JsonValueListIterator ;
typedef TYPE_2__ JsonValueList ;
typedef int JsonPathItem ;
typedef int JsonPathExecResult ;
typedef int JsonPathExecContext ;


 int Assert (int) ;
 int JsonValueListAppend (TYPE_2__*,TYPE_1__*) ;
 int JsonValueListInitIterator (TYPE_2__*,int *) ;
 TYPE_1__* JsonValueListNext (TYPE_2__*,int *) ;
 scalar_t__ JsonbType (TYPE_1__*) ;
 int executeItem (int *,int *,TYPE_1__*,TYPE_2__*) ;
 int executeItemUnwrapTargetArray (int *,int *,TYPE_1__*,TYPE_2__*,int) ;
 scalar_t__ jbvArray ;
 scalar_t__ jperIsError (int ) ;
 int jperOk ;
 scalar_t__ jspAutoUnwrap (int *) ;

__attribute__((used)) static JsonPathExecResult
executeItemOptUnwrapResult(JsonPathExecContext *cxt, JsonPathItem *jsp,
         JsonbValue *jb, bool unwrap,
         JsonValueList *found)
{
 if (unwrap && jspAutoUnwrap(cxt))
 {
  JsonValueList seq = {0};
  JsonValueListIterator it;
  JsonPathExecResult res = executeItem(cxt, jsp, jb, &seq);
  JsonbValue *item;

  if (jperIsError(res))
   return res;

  JsonValueListInitIterator(&seq, &it);
  while ((item = JsonValueListNext(&seq, &it)))
  {
   Assert(item->type != jbvArray);

   if (JsonbType(item) == jbvArray)
    executeItemUnwrapTargetArray(cxt, ((void*)0), item, found, 0);
   else
    JsonValueListAppend(found, item);
  }

  return jperOk;
 }

 return executeItem(cxt, jsp, jb, found);
}
