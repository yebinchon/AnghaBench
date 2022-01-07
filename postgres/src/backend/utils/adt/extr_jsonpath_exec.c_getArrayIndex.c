
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_12__ {int member_0; } ;
struct TYPE_10__ {int numeric; } ;
struct TYPE_11__ {TYPE_1__ val; } ;
typedef TYPE_2__ JsonbValue ;
typedef TYPE_3__ JsonValueList ;
typedef int JsonPathItem ;
typedef int JsonPathExecResult ;
typedef int JsonPathExecContext ;
typedef int Datum ;


 int DatumGetNumeric (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int ERRCODE_INVALID_SQL_JSON_SUBSCRIPT ;
 int ERROR ;
 int Int32GetDatum (int ) ;
 int JsonValueListHead (TYPE_3__*) ;
 int JsonValueListLength (TYPE_3__*) ;
 int NumericGetDatum (int ) ;
 int RETURN_ERROR (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int executeItem (int *,int *,TYPE_2__*,TYPE_3__*) ;
 TYPE_2__* getScalar (int ,int ) ;
 int jbvNumeric ;
 scalar_t__ jperIsError (int ) ;
 int jperOk ;
 int numeric_int4_opt_error (int ,int*) ;
 int numeric_trunc ;

__attribute__((used)) static JsonPathExecResult
getArrayIndex(JsonPathExecContext *cxt, JsonPathItem *jsp, JsonbValue *jb,
     int32 *index)
{
 JsonbValue *jbv;
 JsonValueList found = {0};
 JsonPathExecResult res = executeItem(cxt, jsp, jb, &found);
 Datum numeric_index;
 bool have_error = 0;

 if (jperIsError(res))
  return res;

 if (JsonValueListLength(&found) != 1 ||
  !(jbv = getScalar(JsonValueListHead(&found), jbvNumeric)))
  RETURN_ERROR(ereport(ERROR,
        (errcode(ERRCODE_INVALID_SQL_JSON_SUBSCRIPT),
         errmsg("jsonpath array subscript is not a single numeric value"))));

 numeric_index = DirectFunctionCall2(numeric_trunc,
          NumericGetDatum(jbv->val.numeric),
          Int32GetDatum(0));

 *index = numeric_int4_opt_error(DatumGetNumeric(numeric_index),
         &have_error);

 if (have_error)
  RETURN_ERROR(ereport(ERROR,
        (errcode(ERRCODE_INVALID_SQL_JSON_SUBSCRIPT),
         errmsg("jsonpath array subscript is out of integer range"))));

 return jperOk;
}
