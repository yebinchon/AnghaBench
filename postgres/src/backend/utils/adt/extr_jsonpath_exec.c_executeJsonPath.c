
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {int header; } ;
struct TYPE_16__ {scalar_t__ id; int * jbc; } ;
struct TYPE_19__ {int laxMode; int ignoreStructuralErrors; int lastGeneratedObjectId; int innermostArraySize; int throwErrors; int useTz; TYPE_1__ baseObject; int * current; int * root; TYPE_2__* vars; } ;
struct TYPE_18__ {int member_0; } ;
struct TYPE_17__ {int root; } ;
typedef int JsonbValue ;
typedef TYPE_2__ Jsonb ;
typedef TYPE_3__ JsonValueList ;
typedef int JsonPathItem ;
typedef int JsonPathExecResult ;
typedef TYPE_4__ JsonPathExecContext ;
typedef TYPE_5__ JsonPath ;


 int Assert (int) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int JSONPATH_LAX ;
 int JsonContainerIsObject (int *) ;
 scalar_t__ JsonValueListIsEmpty (TYPE_3__*) ;
 int JsonbExtractScalar (int *,int *) ;
 int JsonbInitBinary (int *,TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 int executeItem (TYPE_4__*,int *,int *,TYPE_3__*) ;
 scalar_t__ jperIsError (int ) ;
 int jperNotFound ;
 int jperOk ;
 int jspInit (int *,TYPE_5__*) ;
 scalar_t__ jspStrictAbsenseOfErrors (TYPE_4__*) ;

__attribute__((used)) static JsonPathExecResult
executeJsonPath(JsonPath *path, Jsonb *vars, Jsonb *json, bool throwErrors,
    JsonValueList *result, bool useTz)
{
 JsonPathExecContext cxt;
 JsonPathExecResult res;
 JsonPathItem jsp;
 JsonbValue jbv;

 jspInit(&jsp, path);

 if (!JsonbExtractScalar(&json->root, &jbv))
  JsonbInitBinary(&jbv, json);

 if (vars && !JsonContainerIsObject(&vars->root))
 {
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("\"vars\" argument is not an object"),
     errdetail("Jsonpath parameters should be encoded as key-value pairs of \"vars\" object.")));
 }

 cxt.vars = vars;
 cxt.laxMode = (path->header & JSONPATH_LAX) != 0;
 cxt.ignoreStructuralErrors = cxt.laxMode;
 cxt.root = &jbv;
 cxt.current = &jbv;
 cxt.baseObject.jbc = ((void*)0);
 cxt.baseObject.id = 0;
 cxt.lastGeneratedObjectId = vars ? 2 : 1;
 cxt.innermostArraySize = -1;
 cxt.throwErrors = throwErrors;
 cxt.useTz = useTz;

 if (jspStrictAbsenseOfErrors(&cxt) && !result)
 {




  JsonValueList vals = {0};

  res = executeItem(&cxt, &jsp, &jbv, &vals);

  if (jperIsError(res))
   return res;

  return JsonValueListIsEmpty(&vals) ? jperNotFound : jperOk;
 }

 res = executeItem(&cxt, &jsp, &jbv, result);

 Assert(!throwErrors || !jperIsError(res));

 return res;
}
