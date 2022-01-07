
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {int type; } ;
struct TYPE_17__ {int numeric; } ;
struct TYPE_18__ {TYPE_1__ val; int type; } ;
typedef int PGFunction ;
typedef TYPE_2__ JsonbValue ;
typedef int JsonValueList ;
typedef TYPE_3__ JsonPathItem ;
typedef int JsonPathExecResult ;
typedef int JsonPathExecContext ;
typedef int Datum ;


 int DatumGetNumeric (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_NON_NUMERIC_SQL_JSON_ITEM ;
 int ERROR ;
 scalar_t__ JsonbType (TYPE_2__*) ;
 int NumericGetDatum (int ) ;
 int RETURN_ERROR (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int executeItemUnwrapTargetArray (int *,TYPE_3__*,TYPE_2__*,int *,int) ;
 int executeNextItem (int *,TYPE_3__*,TYPE_3__*,TYPE_2__*,int *,int) ;
 TYPE_2__* getScalar (TYPE_2__*,int ) ;
 scalar_t__ jbvArray ;
 int jbvNumeric ;
 int jperOk ;
 int jspGetNext (TYPE_3__*,TYPE_3__*) ;
 int jspOperationName (int ) ;
 TYPE_2__* palloc (int) ;

__attribute__((used)) static JsonPathExecResult
executeNumericItemMethod(JsonPathExecContext *cxt, JsonPathItem *jsp,
       JsonbValue *jb, bool unwrap, PGFunction func,
       JsonValueList *found)
{
 JsonPathItem next;
 Datum datum;

 if (unwrap && JsonbType(jb) == jbvArray)
  return executeItemUnwrapTargetArray(cxt, jsp, jb, found, 0);

 if (!(jb = getScalar(jb, jbvNumeric)))
  RETURN_ERROR(ereport(ERROR,
        (errcode(ERRCODE_NON_NUMERIC_SQL_JSON_ITEM),
         errmsg("jsonpath item method .%s() can only be applied to a numeric value",
          jspOperationName(jsp->type)))));

 datum = DirectFunctionCall1(func, NumericGetDatum(jb->val.numeric));

 if (!jspGetNext(jsp, &next) && !found)
  return jperOk;

 jb = palloc(sizeof(*jb));
 jb->type = jbvNumeric;
 jb->val.numeric = DatumGetNumeric(datum);

 return executeNextItem(cxt, jsp, &next, jb, found, 0);
}
