
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int oper; int left; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ qoperator; } ;
typedef TYPE_2__ QueryItem ;


 int ERROR ;




 scalar_t__ QI_VAL ;
 int check_stack_depth () ;
 int elog (int ,char*,int) ;

bool
tsquery_requires_match(QueryItem *curitem)
{

 check_stack_depth();

 if (curitem->type == QI_VAL)
  return 1;

 switch (curitem->qoperator.oper)
 {
  case 130:






   return 0;

  case 128:




  case 131:

   if (tsquery_requires_match(curitem + curitem->qoperator.left))
    return 1;
   else
    return tsquery_requires_match(curitem + 1);

  case 129:

   if (tsquery_requires_match(curitem + curitem->qoperator.left))
    return tsquery_requires_match(curitem + 1);
   else
    return 0;

  default:
   elog(ERROR, "unrecognized operator: %d", curitem->qoperator.oper);
 }


 return 0;
}
