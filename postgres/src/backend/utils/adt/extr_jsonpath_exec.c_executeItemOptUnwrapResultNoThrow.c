
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int throwErrors; } ;
typedef int JsonbValue ;
typedef int JsonValueList ;
typedef int JsonPathItem ;
typedef int JsonPathExecResult ;
typedef TYPE_1__ JsonPathExecContext ;


 int executeItemOptUnwrapResult (TYPE_1__*,int *,int *,int,int *) ;

__attribute__((used)) static JsonPathExecResult
executeItemOptUnwrapResultNoThrow(JsonPathExecContext *cxt,
          JsonPathItem *jsp,
          JsonbValue *jb, bool unwrap,
          JsonValueList *found)
{
 JsonPathExecResult res;
 bool throwErrors = cxt->throwErrors;

 cxt->throwErrors = 0;
 res = executeItemOptUnwrapResult(cxt, jsp, jb, unwrap, found);
 cxt->throwErrors = throwErrors;

 return res;
}
