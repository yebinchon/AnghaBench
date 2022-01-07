
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_31__ {int member_0; } ;
struct TYPE_27__ {int expr; } ;
struct TYPE_28__ {TYPE_1__ like_regex; } ;
struct TYPE_30__ {int type; TYPE_2__ content; int base; } ;
struct TYPE_29__ {int member_0; } ;
typedef int JsonbValue ;
typedef TYPE_3__ JsonValueList ;
typedef TYPE_4__ JsonPathItem ;
typedef int JsonPathExecResult ;
typedef TYPE_5__ JsonPathExecContext ;
typedef int JsonPathBool ;
typedef TYPE_5__ JsonLikeRegexContext ;


 int ERROR ;
 int JsonValueListIsEmpty (TYPE_3__*) ;
 int elog (int ,char*,...) ;
 int executeComparison ;
 int executeItemOptUnwrapResultNoThrow (TYPE_5__*,TYPE_4__*,int *,int,TYPE_3__*) ;
 int executeLikeRegex ;
 int executePredicate (TYPE_5__*,TYPE_4__*,TYPE_4__*,TYPE_4__*,int *,int,int ,TYPE_5__*) ;
 int executeStartsWith ;
 int jpbFalse ;
 int jpbTrue ;
 int jpbUnknown ;
 int jperIsError (int ) ;
 int jperOk ;
 int jspGetArg (TYPE_4__*,TYPE_4__*) ;
 int jspGetLeftArg (TYPE_4__*,TYPE_4__*) ;
 int jspGetRightArg (TYPE_4__*,TYPE_4__*) ;
 scalar_t__ jspHasNext (TYPE_4__*) ;
 int jspInitByBuffer (TYPE_4__*,int ,int ) ;
 int jspStrictAbsenseOfErrors (TYPE_5__*) ;

__attribute__((used)) static JsonPathBool
executeBoolItem(JsonPathExecContext *cxt, JsonPathItem *jsp,
    JsonbValue *jb, bool canHaveNext)
{
 JsonPathItem larg;
 JsonPathItem rarg;
 JsonPathBool res;
 JsonPathBool res2;

 if (!canHaveNext && jspHasNext(jsp))
  elog(ERROR, "boolean jsonpath item cannot have next item");

 switch (jsp->type)
 {
  case 140:
   jspGetLeftArg(jsp, &larg);
   res = executeBoolItem(cxt, &larg, jb, 0);

   if (res == jpbFalse)
    return jpbFalse;






   jspGetRightArg(jsp, &rarg);
   res2 = executeBoolItem(cxt, &rarg, jb, 0);

   return res2 == jpbTrue ? res : res2;

  case 129:
   jspGetLeftArg(jsp, &larg);
   res = executeBoolItem(cxt, &larg, jb, 0);

   if (res == jpbTrue)
    return jpbTrue;

   jspGetRightArg(jsp, &rarg);
   res2 = executeBoolItem(cxt, &rarg, jb, 0);

   return res2 == jpbFalse ? res : res2;

  case 131:
   jspGetArg(jsp, &larg);

   res = executeBoolItem(cxt, &larg, jb, 0);

   if (res == jpbUnknown)
    return jpbUnknown;

   return res == jpbTrue ? jpbFalse : jpbTrue;

  case 135:
   jspGetArg(jsp, &larg);
   res = executeBoolItem(cxt, &larg, jb, 0);
   return res == jpbUnknown ? jpbTrue : jpbFalse;

  case 139:
  case 130:
  case 134:
  case 137:
  case 133:
  case 136:
   jspGetLeftArg(jsp, &larg);
   jspGetRightArg(jsp, &rarg);
   return executePredicate(cxt, jsp, &larg, &rarg, jb, 1,
         executeComparison, cxt);

  case 128:
   jspGetLeftArg(jsp, &larg);
   jspGetRightArg(jsp, &rarg);
   return executePredicate(cxt, jsp, &larg, &rarg, jb, 0,
         executeStartsWith, ((void*)0));

  case 132:
   {






    JsonLikeRegexContext lrcxt = {0};

    jspInitByBuffer(&larg, jsp->base,
        jsp->content.like_regex.expr);

    return executePredicate(cxt, jsp, &larg, ((void*)0), jb, 0,
          executeLikeRegex, &lrcxt);
   }

  case 138:
   jspGetArg(jsp, &larg);

   if (jspStrictAbsenseOfErrors(cxt))
   {




    JsonValueList vals = {0};
    JsonPathExecResult res =
    executeItemOptUnwrapResultNoThrow(cxt, &larg, jb,
              0, &vals);

    if (jperIsError(res))
     return jpbUnknown;

    return JsonValueListIsEmpty(&vals) ? jpbFalse : jpbTrue;
   }
   else
   {
    JsonPathExecResult res =
    executeItemOptUnwrapResultNoThrow(cxt, &larg, jb,
              0, ((void*)0));

    if (jperIsError(res))
     return jpbUnknown;

    return res == jperOk ? jpbTrue : jpbFalse;
   }

  default:
   elog(ERROR, "invalid boolean jsonpath item type: %d", jsp->type);
   return jpbUnknown;
 }
}
