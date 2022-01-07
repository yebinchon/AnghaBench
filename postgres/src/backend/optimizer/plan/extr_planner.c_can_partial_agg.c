
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ hasNonSerial; scalar_t__ hasNonPartial; } ;
struct TYPE_7__ {TYPE_1__* parse; } ;
struct TYPE_6__ {scalar_t__ groupClause; scalar_t__ groupingSets; int hasAggs; } ;
typedef TYPE_1__ Query ;
typedef TYPE_2__ PlannerInfo ;
typedef TYPE_3__ AggClauseCosts ;


 scalar_t__ NIL ;

__attribute__((used)) static bool
can_partial_agg(PlannerInfo *root, const AggClauseCosts *agg_costs)
{
 Query *parse = root->parse;

 if (!parse->hasAggs && parse->groupClause == NIL)
 {




  return 0;
 }
 else if (parse->groupingSets)
 {

  return 0;
 }
 else if (agg_costs->hasNonPartial || agg_costs->hasNonSerial)
 {

  return 0;
 }


 return 1;
}
