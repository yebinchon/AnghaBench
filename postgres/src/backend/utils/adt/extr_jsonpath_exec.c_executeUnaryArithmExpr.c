
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_27__ {int type; } ;
struct TYPE_26__ {int member_0; } ;
struct TYPE_24__ {int numeric; } ;
struct TYPE_25__ {TYPE_1__ val; } ;
typedef scalar_t__ PGFunction ;
typedef TYPE_2__ JsonbValue ;
typedef int JsonValueListIterator ;
typedef TYPE_3__ JsonValueList ;
typedef TYPE_4__ JsonPathItem ;
typedef scalar_t__ JsonPathExecResult ;
typedef int JsonPathExecContext ;


 int DatumGetNumeric (int ) ;
 int DirectFunctionCall1 (scalar_t__,int ) ;
 int ERRCODE_SQL_JSON_NUMBER_NOT_FOUND ;
 int ERROR ;
 int JsonValueListInitIterator (TYPE_3__*,int *) ;
 TYPE_2__* JsonValueListNext (TYPE_3__*,int *) ;
 int NumericGetDatum (int ) ;
 int RETURN_ERROR (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ executeItemOptUnwrapResult (int *,TYPE_4__*,TYPE_2__*,int,TYPE_3__*) ;
 scalar_t__ executeNextItem (int *,TYPE_4__*,TYPE_4__*,TYPE_2__*,TYPE_3__*,int) ;
 TYPE_2__* getScalar (TYPE_2__*,int ) ;
 int jbvNumeric ;
 scalar_t__ jperIsError (scalar_t__) ;
 scalar_t__ jperNotFound ;
 scalar_t__ jperOk ;
 int jspGetArg (TYPE_4__*,TYPE_4__*) ;
 int jspGetNext (TYPE_4__*,TYPE_4__*) ;
 int jspOperationName (int ) ;

__attribute__((used)) static JsonPathExecResult
executeUnaryArithmExpr(JsonPathExecContext *cxt, JsonPathItem *jsp,
        JsonbValue *jb, PGFunction func, JsonValueList *found)
{
 JsonPathExecResult jper;
 JsonPathExecResult jper2;
 JsonPathItem elem;
 JsonValueList seq = {0};
 JsonValueListIterator it;
 JsonbValue *val;
 bool hasNext;

 jspGetArg(jsp, &elem);
 jper = executeItemOptUnwrapResult(cxt, &elem, jb, 1, &seq);

 if (jperIsError(jper))
  return jper;

 jper = jperNotFound;

 hasNext = jspGetNext(jsp, &elem);

 JsonValueListInitIterator(&seq, &it);
 while ((val = JsonValueListNext(&seq, &it)))
 {
  if ((val = getScalar(val, jbvNumeric)))
  {
   if (!found && !hasNext)
    return jperOk;
  }
  else
  {
   if (!found && !hasNext)
    continue;

   RETURN_ERROR(ereport(ERROR,
         (errcode(ERRCODE_SQL_JSON_NUMBER_NOT_FOUND),
          errmsg("operand of unary jsonpath operator %s is not a numeric value",
           jspOperationName(jsp->type)))));
  }

  if (func)
   val->val.numeric =
    DatumGetNumeric(DirectFunctionCall1(func,
             NumericGetDatum(val->val.numeric)));

  jper2 = executeNextItem(cxt, jsp, &elem, val, found, 0);

  if (jperIsError(jper2))
   return jper2;

  if (jper2 == jperOk)
  {
   if (!found)
    return jperOk;
   jper = jperOk;
  }
 }

 return jper;
}
