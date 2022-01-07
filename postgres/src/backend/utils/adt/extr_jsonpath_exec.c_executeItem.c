
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonbValue ;
typedef int JsonValueList ;
typedef int JsonPathItem ;
typedef int JsonPathExecResult ;
typedef int JsonPathExecContext ;


 int executeItemOptUnwrapTarget (int *,int *,int *,int *,int ) ;
 int jspAutoUnwrap (int *) ;

__attribute__((used)) static JsonPathExecResult
executeItem(JsonPathExecContext *cxt, JsonPathItem *jsp,
   JsonbValue *jb, JsonValueList *found)
{
 return executeItemOptUnwrapTarget(cxt, jsp, jb, found, jspAutoUnwrap(cxt));
}
