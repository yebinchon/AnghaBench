
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; } ;
typedef int JsonbValue ;
typedef int JsonValueListIterator ;
typedef TYPE_1__ JsonValueList ;
typedef scalar_t__ (* JsonPathPredicateCallback ) (int *,int *,int *,void*) ;
typedef int JsonPathItem ;
typedef int JsonPathExecResult ;
typedef int JsonPathExecContext ;
typedef scalar_t__ JsonPathBool ;


 int JsonValueListInitIterator (TYPE_1__*,int *) ;
 int * JsonValueListNext (TYPE_1__*,int *) ;
 int executeItemOptUnwrapResultNoThrow (int *,int *,int *,int,TYPE_1__*) ;
 scalar_t__ jpbFalse ;
 scalar_t__ jpbTrue ;
 scalar_t__ jpbUnknown ;
 scalar_t__ jperIsError (int ) ;
 scalar_t__ jspStrictAbsenseOfErrors (int *) ;

__attribute__((used)) static JsonPathBool
executePredicate(JsonPathExecContext *cxt, JsonPathItem *pred,
     JsonPathItem *larg, JsonPathItem *rarg, JsonbValue *jb,
     bool unwrapRightArg, JsonPathPredicateCallback exec,
     void *param)
{
 JsonPathExecResult res;
 JsonValueListIterator lseqit;
 JsonValueList lseq = {0};
 JsonValueList rseq = {0};
 JsonbValue *lval;
 bool error = 0;
 bool found = 0;


 res = executeItemOptUnwrapResultNoThrow(cxt, larg, jb, 1, &lseq);
 if (jperIsError(res))
  return jpbUnknown;

 if (rarg)
 {

  res = executeItemOptUnwrapResultNoThrow(cxt, rarg, jb,
            unwrapRightArg, &rseq);
  if (jperIsError(res))
   return jpbUnknown;
 }

 JsonValueListInitIterator(&lseq, &lseqit);
 while ((lval = JsonValueListNext(&lseq, &lseqit)))
 {
  JsonValueListIterator rseqit;
  JsonbValue *rval;
  bool first = 1;

  JsonValueListInitIterator(&rseq, &rseqit);
  if (rarg)
   rval = JsonValueListNext(&rseq, &rseqit);
  else
   rval = ((void*)0);


  while (rarg ? (rval != ((void*)0)) : first)
  {
   JsonPathBool res = exec(pred, lval, rval, param);

   if (res == jpbUnknown)
   {
    if (jspStrictAbsenseOfErrors(cxt))
     return jpbUnknown;

    error = 1;
   }
   else if (res == jpbTrue)
   {
    if (!jspStrictAbsenseOfErrors(cxt))
     return jpbTrue;

    found = 1;
   }

   first = 0;
   if (rarg)
    rval = JsonValueListNext(&rseq, &rseqit);
  }
 }

 if (found)
  return jpbTrue;

 if (error)
  return jpbUnknown;

 return jpbFalse;
}
