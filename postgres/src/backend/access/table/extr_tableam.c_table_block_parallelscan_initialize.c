
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int phs_syncscan; int phs_relid; } ;
struct TYPE_4__ {int phs_nblocks; int phs_nallocated; int phs_startblock; int phs_mutex; TYPE_1__ base; } ;
typedef int Size ;
typedef int Relation ;
typedef int ParallelTableScanDesc ;
typedef int ParallelBlockTableScanDescData ;
typedef TYPE_2__* ParallelBlockTableScanDesc ;


 int InvalidBlockNumber ;
 int NBuffers ;
 int RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelid (int ) ;
 int RelationUsesLocalBuffers (int ) ;
 int SpinLockInit (int *) ;
 int pg_atomic_init_u64 (int *,int ) ;
 scalar_t__ synchronize_seqscans ;

Size
table_block_parallelscan_initialize(Relation rel, ParallelTableScanDesc pscan)
{
 ParallelBlockTableScanDesc bpscan = (ParallelBlockTableScanDesc) pscan;

 bpscan->base.phs_relid = RelationGetRelid(rel);
 bpscan->phs_nblocks = RelationGetNumberOfBlocks(rel);

 bpscan->base.phs_syncscan = synchronize_seqscans &&
  !RelationUsesLocalBuffers(rel) &&
  bpscan->phs_nblocks > NBuffers / 4;
 SpinLockInit(&bpscan->phs_mutex);
 bpscan->phs_startblock = InvalidBlockNumber;
 pg_atomic_init_u64(&bpscan->phs_nallocated, 0);

 return sizeof(ParallelBlockTableScanDescData);
}
