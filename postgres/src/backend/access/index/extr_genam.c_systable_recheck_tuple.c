
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int slot; int heap_rel; } ;
typedef TYPE_1__* SysScanDesc ;
typedef int Snapshot ;
typedef scalar_t__ HeapTuple ;


 int Assert (int) ;
 scalar_t__ ExecFetchSlotHeapTuple (int ,int,int *) ;
 int GetCatalogSnapshot (int ) ;
 int RelationGetRelid (int ) ;
 int table_tuple_satisfies_snapshot (int ,int ,int ) ;

bool
systable_recheck_tuple(SysScanDesc sysscan, HeapTuple tup)
{
 Snapshot freshsnap;
 bool result;

 Assert(tup == ExecFetchSlotHeapTuple(sysscan->slot, 0, ((void*)0)));







 freshsnap = GetCatalogSnapshot(RelationGetRelid(sysscan->heap_rel));

 result = table_tuple_satisfies_snapshot(sysscan->heap_rel,
           sysscan->slot,
           freshsnap);

 return result;
}
