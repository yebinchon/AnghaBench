
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef scalar_t__ int32 ;
struct TYPE_13__ {int ignoreStructuralErrors; } ;
struct TYPE_10__ {int * data; } ;
struct TYPE_11__ {TYPE_1__ binary; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;
typedef int JsonbIterator ;
typedef int JsonbContainer ;
typedef int JsonValueList ;
typedef int JsonPathItem ;
typedef scalar_t__ JsonPathExecResult ;
typedef TYPE_4__ JsonPathExecContext ;


 int Assert (int) ;
 int JsonValueListAppend (int *,int ) ;
 int * JsonbIteratorInit (int *) ;
 scalar_t__ JsonbIteratorNext (int **,TYPE_3__*,int) ;
 scalar_t__ PG_UINT32_MAX ;
 scalar_t__ WJB_DONE ;
 scalar_t__ WJB_ELEM ;
 scalar_t__ WJB_KEY ;
 scalar_t__ WJB_VALUE ;
 int check_stack_depth () ;
 int copyJsonbValue (TYPE_3__*) ;
 scalar_t__ executeItemOptUnwrapTarget (TYPE_4__*,int *,TYPE_3__*,int *,int) ;
 scalar_t__ jbvBinary ;
 scalar_t__ jperIsError (scalar_t__) ;
 scalar_t__ jperNotFound ;
 scalar_t__ jperOk ;

__attribute__((used)) static JsonPathExecResult
executeAnyItem(JsonPathExecContext *cxt, JsonPathItem *jsp, JsonbContainer *jbc,
      JsonValueList *found, uint32 level, uint32 first, uint32 last,
      bool ignoreStructuralErrors, bool unwrapNext)
{
 JsonPathExecResult res = jperNotFound;
 JsonbIterator *it;
 int32 r;
 JsonbValue v;

 check_stack_depth();

 if (level > last)
  return res;

 it = JsonbIteratorInit(jbc);




 while ((r = JsonbIteratorNext(&it, &v, 1)) != WJB_DONE)
 {
  if (r == WJB_KEY)
  {
   r = JsonbIteratorNext(&it, &v, 1);
   Assert(r == WJB_VALUE);
  }

  if (r == WJB_VALUE || r == WJB_ELEM)
  {

   if (level >= first ||
    (first == PG_UINT32_MAX && last == PG_UINT32_MAX &&
     v.type != jbvBinary))
   {

    if (jsp)
    {
     if (ignoreStructuralErrors)
     {
      bool savedIgnoreStructuralErrors;

      savedIgnoreStructuralErrors = cxt->ignoreStructuralErrors;
      cxt->ignoreStructuralErrors = 1;
      res = executeItemOptUnwrapTarget(cxt, jsp, &v, found, unwrapNext);
      cxt->ignoreStructuralErrors = savedIgnoreStructuralErrors;
     }
     else
      res = executeItemOptUnwrapTarget(cxt, jsp, &v, found, unwrapNext);

     if (jperIsError(res))
      break;

     if (res == jperOk && !found)
      break;
    }
    else if (found)
     JsonValueListAppend(found, copyJsonbValue(&v));
    else
     return jperOk;
   }

   if (level < last && v.type == jbvBinary)
   {
    res = executeAnyItem
     (cxt, jsp, v.val.binary.data, found,
      level + 1, first, last,
      ignoreStructuralErrors, unwrapNext);

    if (jperIsError(res))
     break;

    if (res == jperOk && found == ((void*)0))
     break;
   }
  }
 }

 return res;
}
