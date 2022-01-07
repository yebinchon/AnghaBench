
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int es_range_table_size; int ** es_relations; } ;
struct TYPE_6__ {scalar_t__ rtekind; scalar_t__ rellockmode; int relid; } ;
typedef int * Relation ;
typedef TYPE_1__ RangeTblEntry ;
typedef int Index ;
typedef TYPE_2__ EState ;


 scalar_t__ AccessShareLock ;
 int Assert (int) ;
 scalar_t__ CheckRelationLockedByMe (int *,scalar_t__,int) ;
 int IsParallelWorker () ;
 scalar_t__ NoLock ;
 scalar_t__ RTE_RELATION ;
 TYPE_1__* exec_rt_fetch (int,TYPE_2__*) ;
 int * table_open (int ,scalar_t__) ;

Relation
ExecGetRangeTableRelation(EState *estate, Index rti)
{
 Relation rel;

 Assert(rti > 0 && rti <= estate->es_range_table_size);

 rel = estate->es_relations[rti - 1];
 if (rel == ((void*)0))
 {

  RangeTblEntry *rte = exec_rt_fetch(rti, estate);

  Assert(rte->rtekind == RTE_RELATION);

  if (!IsParallelWorker())
  {







   rel = table_open(rte->relid, NoLock);
   Assert(rte->rellockmode == AccessShareLock ||
       CheckRelationLockedByMe(rel, rte->rellockmode, 0));
  }
  else
  {





   rel = table_open(rte->relid, rte->rellockmode);
  }

  estate->es_relations[rti - 1] = rel;
 }

 return rel;
}
