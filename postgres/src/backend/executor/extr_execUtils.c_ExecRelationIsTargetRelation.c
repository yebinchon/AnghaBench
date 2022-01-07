
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int es_num_result_relations; TYPE_1__* es_result_relations; } ;
struct TYPE_4__ {scalar_t__ ri_RangeTableIndex; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef scalar_t__ Index ;
typedef TYPE_2__ EState ;



bool
ExecRelationIsTargetRelation(EState *estate, Index scanrelid)
{
 ResultRelInfo *resultRelInfos;
 int i;

 resultRelInfos = estate->es_result_relations;
 for (i = 0; i < estate->es_num_result_relations; i++)
 {
  if (resultRelInfos[i].ri_RangeTableIndex == scanrelid)
   return 1;
 }
 return 0;
}
