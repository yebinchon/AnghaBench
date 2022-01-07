
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int state; } ;
struct TYPE_16__ {TYPE_2__ ps; } ;
struct TYPE_15__ {scalar_t__ tupslot; int reldesc; } ;
struct TYPE_14__ {int num_dispatch; int num_partitions; TYPE_3__** partitions; TYPE_5__** partition_dispatch_info; int * subplan_resultrel_htab; } ;
struct TYPE_13__ {int ri_RelationDesc; TYPE_1__* ri_FdwRoutine; } ;
struct TYPE_11__ {int (* EndForeignInsert ) (int ,TYPE_3__*) ;} ;
typedef TYPE_3__ ResultRelInfo ;
typedef TYPE_4__ PartitionTupleRouting ;
typedef TYPE_5__* PartitionDispatch ;
typedef int Oid ;
typedef TYPE_6__ ModifyTableState ;
typedef int HTAB ;


 int ExecCloseIndices (TYPE_3__*) ;
 int ExecDropSingleTupleTableSlot (scalar_t__) ;
 int HASH_FIND ;
 int NoLock ;
 int RelationGetRelid (int ) ;
 int hash_search (int *,int *,int ,int*) ;
 int stub1 (int ,TYPE_3__*) ;
 int table_close (int ,int ) ;

void
ExecCleanupTupleRouting(ModifyTableState *mtstate,
      PartitionTupleRouting *proute)
{
 HTAB *htab = proute->subplan_resultrel_htab;
 int i;
 for (i = 1; i < proute->num_dispatch; i++)
 {
  PartitionDispatch pd = proute->partition_dispatch_info[i];

  table_close(pd->reldesc, NoLock);

  if (pd->tupslot)
   ExecDropSingleTupleTableSlot(pd->tupslot);
 }

 for (i = 0; i < proute->num_partitions; i++)
 {
  ResultRelInfo *resultRelInfo = proute->partitions[i];


  if (resultRelInfo->ri_FdwRoutine != ((void*)0) &&
   resultRelInfo->ri_FdwRoutine->EndForeignInsert != ((void*)0))
   resultRelInfo->ri_FdwRoutine->EndForeignInsert(mtstate->ps.state,
                 resultRelInfo);





  if (htab)
  {
   Oid partoid;
   bool found;

   partoid = RelationGetRelid(resultRelInfo->ri_RelationDesc);

   (void) hash_search(htab, &partoid, HASH_FIND, &found);
   if (found)
    continue;
  }

  ExecCloseIndices(resultRelInfo);
  table_close(resultRelInfo->ri_RelationDesc, NoLock);
 }
}
