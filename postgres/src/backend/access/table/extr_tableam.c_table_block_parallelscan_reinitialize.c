
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phs_nallocated; } ;
typedef int Relation ;
typedef int ParallelTableScanDesc ;
typedef TYPE_1__* ParallelBlockTableScanDesc ;


 int pg_atomic_write_u64 (int *,int ) ;

void
table_block_parallelscan_reinitialize(Relation rel, ParallelTableScanDesc pscan)
{
 ParallelBlockTableScanDesc bpscan = (ParallelBlockTableScanDesc) pscan;

 pg_atomic_write_u64(&bpscan->phs_nallocated, 0);
}
