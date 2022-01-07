
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TargetEntry ;
struct TYPE_3__ {int tleSortGroupRef; } ;
typedef TYPE_1__ SortGroupClause ;
typedef int List ;


 int * get_sortgroupref_tle (int ,int *) ;

TargetEntry *
get_sortgroupclause_tle(SortGroupClause *sgClause,
      List *targetList)
{
 return get_sortgroupref_tle(sgClause->tleSortGroupRef, targetList);
}
