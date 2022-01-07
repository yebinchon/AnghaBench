
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ distinctClause; scalar_t__ groupClause; scalar_t__ groupingSets; scalar_t__ setOperations; scalar_t__ havingQual; scalar_t__ hasAggs; scalar_t__ hasTargetSRFs; } ;
typedef TYPE_1__ Query ;


 scalar_t__ NIL ;

bool
query_supports_distinctness(Query *query)
{

 if (query->hasTargetSRFs && query->distinctClause == NIL)
  return 0;


 if (query->distinctClause != NIL ||
  query->groupClause != NIL ||
  query->groupingSets != NIL ||
  query->hasAggs ||
  query->havingQual ||
  query->setOperations)
  return 1;

 return 0;
}
