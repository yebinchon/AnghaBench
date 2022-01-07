
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ operation; } ;
struct TYPE_10__ {scalar_t__ plan; } ;
struct TYPE_12__ {TYPE_1__ ps; } ;
struct TYPE_11__ {int memcxt; int partition_root; } ;
typedef int Relation ;
typedef TYPE_2__ PartitionTupleRouting ;
typedef TYPE_3__ ModifyTableState ;
typedef TYPE_4__ ModifyTable ;
typedef int EState ;


 scalar_t__ CMD_UPDATE ;
 int CurrentMemoryContext ;
 int ExecHashSubPlanResultRelsByOid (TYPE_3__*,TYPE_2__*) ;
 int ExecInitPartitionDispatchInfo (int *,TYPE_2__*,int ,int *,int ) ;
 int RelationGetRelid (int ) ;
 scalar_t__ palloc0 (int) ;

PartitionTupleRouting *
ExecSetupPartitionTupleRouting(EState *estate, ModifyTableState *mtstate,
          Relation rel)
{
 PartitionTupleRouting *proute;
 ModifyTable *node = mtstate ? (ModifyTable *) mtstate->ps.plan : ((void*)0);
 proute = (PartitionTupleRouting *) palloc0(sizeof(PartitionTupleRouting));
 proute->partition_root = rel;
 proute->memcxt = CurrentMemoryContext;







 ExecInitPartitionDispatchInfo(estate, proute, RelationGetRelid(rel),
          ((void*)0), 0);
 if (node && node->operation == CMD_UPDATE)
  ExecHashSubPlanResultRelsByOid(mtstate, proute);

 return proute;
}
