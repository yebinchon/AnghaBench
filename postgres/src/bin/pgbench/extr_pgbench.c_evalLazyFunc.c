
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int expr; struct TYPE_11__* next; } ;
struct TYPE_10__ {int type; } ;
typedef TYPE_1__ PgBenchValue ;
typedef int PgBenchFunction ;
typedef TYPE_2__ PgBenchExprLink ;
typedef int CState ;


 int Assert (int) ;



 int PGBT_NULL ;
 int coerceToBool (TYPE_1__*,int*) ;
 int evaluateExpr (int *,int ,TYPE_1__*) ;
 scalar_t__ isLazyFunc (int) ;
 int setBoolValue (TYPE_1__*,int) ;
 int setNullValue (TYPE_1__*) ;
 int valueTruth (TYPE_1__*) ;

__attribute__((used)) static bool
evalLazyFunc(CState *st,
    PgBenchFunction func, PgBenchExprLink *args, PgBenchValue *retval)
{
 PgBenchValue a1,
    a2;
 bool ba1,
    ba2;

 Assert(isLazyFunc(func) && args != ((void*)0) && args->next != ((void*)0));


 if (!evaluateExpr(st, args->expr, &a1))
  return 0;


 args = args->next;

 switch (func)
 {
  case 130:
   if (a1.type == PGBT_NULL)
   {
    setNullValue(retval);
    return 1;
   }

   if (!coerceToBool(&a1, &ba1))
    return 0;

   if (!ba1)
   {
    setBoolValue(retval, 0);
    return 1;
   }

   if (!evaluateExpr(st, args->expr, &a2))
    return 0;

   if (a2.type == PGBT_NULL)
   {
    setNullValue(retval);
    return 1;
   }
   else if (!coerceToBool(&a2, &ba2))
    return 0;
   else
   {
    setBoolValue(retval, ba2);
    return 1;
   }

   return 1;

  case 128:

   if (a1.type == PGBT_NULL)
   {
    setNullValue(retval);
    return 1;
   }

   if (!coerceToBool(&a1, &ba1))
    return 0;

   if (ba1)
   {
    setBoolValue(retval, 1);
    return 1;
   }

   if (!evaluateExpr(st, args->expr, &a2))
    return 0;

   if (a2.type == PGBT_NULL)
   {
    setNullValue(retval);
    return 1;
   }
   else if (!coerceToBool(&a2, &ba2))
    return 0;
   else
   {
    setBoolValue(retval, ba2);
    return 1;
   }

  case 129:

   if (valueTruth(&a1))
    return evaluateExpr(st, args->expr, retval);


   args = args->next;


   if (args->next == ((void*)0))
    return evaluateExpr(st, args->expr, retval);


   return evalLazyFunc(st, 129, args, retval);

  default:

   Assert(0);
   break;
 }
 return 0;
}
