
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonbValue ;
typedef int JsonValueList ;
typedef int JsonPathItem ;
typedef int JsonPathExecResult ;
typedef int JsonPathExecContext ;


 int JsonValueListAppend (int *,int *) ;
 int * copyJsonbValue (int *) ;
 int executeItem (int *,int *,int *,int *) ;
 int jperOk ;
 int jspGetNext (int *,int *) ;
 int jspHasNext (int *) ;

__attribute__((used)) static JsonPathExecResult
executeNextItem(JsonPathExecContext *cxt,
    JsonPathItem *cur, JsonPathItem *next,
    JsonbValue *v, JsonValueList *found, bool copy)
{
 JsonPathItem elem;
 bool hasNext;

 if (!cur)
  hasNext = next != ((void*)0);
 else if (next)
  hasNext = jspHasNext(cur);
 else
 {
  next = &elem;
  hasNext = jspGetNext(cur, next);
 }

 if (hasNext)
  return executeItem(cxt, next, v, found);

 if (found)
  JsonValueListAppend(found, copy ? copyJsonbValue(v) : v);

 return jperOk;
}
