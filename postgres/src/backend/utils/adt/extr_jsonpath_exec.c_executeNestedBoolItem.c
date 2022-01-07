
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * current; } ;
typedef int JsonbValue ;
typedef int JsonPathItem ;
typedef TYPE_1__ JsonPathExecContext ;
typedef int JsonPathBool ;


 int executeBoolItem (TYPE_1__*,int *,int *,int) ;

__attribute__((used)) static JsonPathBool
executeNestedBoolItem(JsonPathExecContext *cxt, JsonPathItem *jsp,
       JsonbValue *jb)
{
 JsonbValue *prev;
 JsonPathBool res;

 prev = cxt->current;
 cxt->current = jb;
 res = executeBoolItem(cxt, jsp, jb, 0);
 cxt->current = prev;

 return res;
}
