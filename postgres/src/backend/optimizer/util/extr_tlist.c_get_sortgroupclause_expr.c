
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expr; } ;
typedef TYPE_1__ TargetEntry ;
typedef int SortGroupClause ;
typedef int Node ;
typedef int List ;


 TYPE_1__* get_sortgroupclause_tle (int *,int *) ;

Node *
get_sortgroupclause_expr(SortGroupClause *sgClause, List *targetList)
{
 TargetEntry *tle = get_sortgroupclause_tle(sgClause, targetList);

 return (Node *) tle->expr;
}
