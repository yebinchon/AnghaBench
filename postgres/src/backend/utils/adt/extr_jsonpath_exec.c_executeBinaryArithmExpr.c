
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_28__ {int type; } ;
struct TYPE_27__ {int member_0; } ;
struct TYPE_25__ {int numeric; } ;
struct TYPE_26__ {TYPE_1__ val; int type; } ;
typedef int Numeric ;
typedef TYPE_2__ JsonbValue ;
typedef TYPE_3__ JsonValueList ;
typedef TYPE_4__ JsonPathItem ;
typedef int JsonPathExecResult ;
typedef int JsonPathExecContext ;
typedef int (* BinaryArithmFunc ) (int ,int ,int*) ;


 int ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED ;
 int ERROR ;
 int JsonValueListHead (TYPE_3__*) ;
 int JsonValueListLength (TYPE_3__*) ;
 int RETURN_ERROR (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int executeItemOptUnwrapResult (int *,TYPE_4__*,TYPE_2__*,int,TYPE_3__*) ;
 int executeNextItem (int *,TYPE_4__*,TYPE_4__*,TYPE_2__*,TYPE_3__*,int) ;
 TYPE_2__* getScalar (int ,int ) ;
 int jbvNumeric ;
 int jperError ;
 scalar_t__ jperIsError (int ) ;
 int jperOk ;
 int jspGetLeftArg (TYPE_4__*,TYPE_4__*) ;
 int jspGetNext (TYPE_4__*,TYPE_4__*) ;
 int jspGetRightArg (TYPE_4__*,TYPE_4__*) ;
 int jspOperationName (int ) ;
 scalar_t__ jspThrowErrors (int *) ;
 TYPE_2__* palloc (int) ;

__attribute__((used)) static JsonPathExecResult
executeBinaryArithmExpr(JsonPathExecContext *cxt, JsonPathItem *jsp,
      JsonbValue *jb, BinaryArithmFunc func,
      JsonValueList *found)
{
 JsonPathExecResult jper;
 JsonPathItem elem;
 JsonValueList lseq = {0};
 JsonValueList rseq = {0};
 JsonbValue *lval;
 JsonbValue *rval;
 Numeric res;

 jspGetLeftArg(jsp, &elem);





 jper = executeItemOptUnwrapResult(cxt, &elem, jb, 1, &lseq);
 if (jperIsError(jper))
  return jper;

 jspGetRightArg(jsp, &elem);

 jper = executeItemOptUnwrapResult(cxt, &elem, jb, 1, &rseq);
 if (jperIsError(jper))
  return jper;

 if (JsonValueListLength(&lseq) != 1 ||
  !(lval = getScalar(JsonValueListHead(&lseq), jbvNumeric)))
  RETURN_ERROR(ereport(ERROR,
        (errcode(ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED),
         errmsg("left operand of jsonpath operator %s is not a single numeric value",
          jspOperationName(jsp->type)))));

 if (JsonValueListLength(&rseq) != 1 ||
  !(rval = getScalar(JsonValueListHead(&rseq), jbvNumeric)))
  RETURN_ERROR(ereport(ERROR,
        (errcode(ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED),
         errmsg("right operand of jsonpath operator %s is not a single numeric value",
          jspOperationName(jsp->type)))));

 if (jspThrowErrors(cxt))
 {
  res = func(lval->val.numeric, rval->val.numeric, ((void*)0));
 }
 else
 {
  bool error = 0;

  res = func(lval->val.numeric, rval->val.numeric, &error);

  if (error)
   return jperError;
 }

 if (!jspGetNext(jsp, &elem) && !found)
  return jperOk;

 lval = palloc(sizeof(*lval));
 lval->type = jbvNumeric;
 lval->val.numeric = res;

 return executeNextItem(cxt, jsp, &elem, lval, found, 0);
}
