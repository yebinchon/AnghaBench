
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {int vars; } ;
struct TYPE_18__ {int type; } ;
struct TYPE_15__ {int len; int val; } ;
struct TYPE_16__ {TYPE_1__ string; int numeric; int boolean; } ;
struct TYPE_17__ {TYPE_2__ val; int type; } ;
typedef TYPE_3__ JsonbValue ;
typedef TYPE_4__ JsonPathItem ;
typedef TYPE_5__ JsonPathExecContext ;


 int ERROR ;
 int elog (int ,char*) ;
 int getJsonPathVariable (TYPE_5__*,TYPE_4__*,int ,TYPE_3__*) ;
 int jbvBool ;
 int jbvNull ;
 int jbvNumeric ;
 int jbvString ;





 int jspGetBool (TYPE_4__*) ;
 int jspGetNumeric (TYPE_4__*) ;
 int jspGetString (TYPE_4__*,int *) ;

__attribute__((used)) static void
getJsonPathItem(JsonPathExecContext *cxt, JsonPathItem *item,
    JsonbValue *value)
{
 switch (item->type)
 {
  case 131:
   value->type = jbvNull;
   break;
  case 132:
   value->type = jbvBool;
   value->val.boolean = jspGetBool(item);
   break;
  case 130:
   value->type = jbvNumeric;
   value->val.numeric = jspGetNumeric(item);
   break;
  case 129:
   value->type = jbvString;
   value->val.string.val = jspGetString(item,
             &value->val.string.len);
   break;
  case 128:
   getJsonPathVariable(cxt, item, cxt->vars, value);
   return;
  default:
   elog(ERROR, "unexpected jsonpath item type");
 }
}
