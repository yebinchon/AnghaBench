
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hasHavingQual; TYPE_1__* parse; } ;
struct TYPE_4__ {scalar_t__ groupClause; int hasAggs; scalar_t__ groupingSets; } ;
typedef TYPE_1__ Query ;
typedef TYPE_2__ PlannerInfo ;


 scalar_t__ NIL ;

__attribute__((used)) static bool
is_degenerate_grouping(PlannerInfo *root)
{
 Query *parse = root->parse;

 return (root->hasHavingQual || parse->groupingSets) &&
  !parse->hasAggs && parse->groupClause == NIL;
}
