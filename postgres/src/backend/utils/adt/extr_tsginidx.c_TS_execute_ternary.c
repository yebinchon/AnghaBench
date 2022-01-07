
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int* need_recheck; } ;
struct TYPE_7__ {int oper; int left; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ qoperator; } ;
typedef int QueryOperand ;
typedef TYPE_2__ QueryItem ;
typedef int GinTernaryValue ;
typedef TYPE_3__ GinChkVal ;


 int ERROR ;
 int GIN_FALSE ;
 int GIN_MAYBE ;
 int GIN_TRUE ;




 scalar_t__ QI_VAL ;
 int check_stack_depth () ;
 int checkcondition_gin_internal (TYPE_3__*,int *,int *) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static GinTernaryValue
TS_execute_ternary(GinChkVal *gcv, QueryItem *curitem, bool in_phrase)
{
 GinTernaryValue val1,
    val2,
    result;


 check_stack_depth();

 if (curitem->type == QI_VAL)
  return
   checkcondition_gin_internal(gcv,
          (QueryOperand *) curitem,
          ((void*)0) );

 switch (curitem->qoperator.oper)
 {
  case 130:

   if (in_phrase)
    return GIN_MAYBE;
   result = TS_execute_ternary(gcv, curitem + 1, in_phrase);
   if (result == GIN_MAYBE)
    return result;
   return !result;

  case 128:





   *(gcv->need_recheck) = 1;

   in_phrase = 1;



  case 131:
   val1 = TS_execute_ternary(gcv, curitem + curitem->qoperator.left,
           in_phrase);
   if (val1 == GIN_FALSE)
    return GIN_FALSE;
   val2 = TS_execute_ternary(gcv, curitem + 1, in_phrase);
   if (val2 == GIN_FALSE)
    return GIN_FALSE;
   if (val1 == GIN_TRUE && val2 == GIN_TRUE)
    return GIN_TRUE;
   else
    return GIN_MAYBE;

  case 129:
   val1 = TS_execute_ternary(gcv, curitem + curitem->qoperator.left,
           in_phrase);
   if (val1 == GIN_TRUE)
    return GIN_TRUE;
   val2 = TS_execute_ternary(gcv, curitem + 1, in_phrase);
   if (val2 == GIN_TRUE)
    return GIN_TRUE;
   if (val1 == GIN_FALSE && val2 == GIN_FALSE)
    return GIN_FALSE;
   else
    return GIN_MAYBE;

  default:
   elog(ERROR, "unrecognized operator: %d", curitem->qoperator.oper);
 }


 return 0;
}
