
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {int oper; int left; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ qoperator; } ;
typedef int (* TSExecuteCallback ) (void*,int *,int *) ;
typedef int QueryOperand ;
typedef TYPE_2__ QueryItem ;


 int ERROR ;




 scalar_t__ QI_VAL ;
 int TS_EXEC_CALC_NOT ;
 int TS_phrase_execute (TYPE_2__*,void*,int,int (*) (void*,int *,int *),int *) ;
 int check_stack_depth () ;
 int elog (int ,char*,int) ;

bool
TS_execute(QueryItem *curitem, void *arg, uint32 flags,
     TSExecuteCallback chkcond)
{

 check_stack_depth();

 if (curitem->type == QI_VAL)
  return chkcond(arg, (QueryOperand *) curitem,
        ((void*)0) );

 switch (curitem->qoperator.oper)
 {
  case 130:
   if (flags & TS_EXEC_CALC_NOT)
    return !TS_execute(curitem + 1, arg, flags, chkcond);
   else
    return 1;

  case 131:
   if (TS_execute(curitem + curitem->qoperator.left, arg, flags, chkcond))
    return TS_execute(curitem + 1, arg, flags, chkcond);
   else
    return 0;

  case 129:
   if (TS_execute(curitem + curitem->qoperator.left, arg, flags, chkcond))
    return 1;
   else
    return TS_execute(curitem + 1, arg, flags, chkcond);

  case 128:
   return TS_phrase_execute(curitem, arg, flags, chkcond, ((void*)0));

  default:
   elog(ERROR, "unrecognized operator: %d", curitem->qoperator.oper);
 }


 return 0;
}
