
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_4__ {scalar_t__ phs_syncscan; } ;
struct TYPE_5__ {int phs_nblocks; int phs_startblock; TYPE_1__ base; int phs_nallocated; } ;
typedef int Relation ;
typedef TYPE_2__* ParallelBlockTableScanDesc ;
typedef int BlockNumber ;


 int InvalidBlockNumber ;
 int pg_atomic_fetch_add_u64 (int *,int) ;
 int ss_report_location (int ,int) ;

BlockNumber
table_block_parallelscan_nextpage(Relation rel, ParallelBlockTableScanDesc pbscan)
{
 BlockNumber page;
 uint64 nallocated;
 nallocated = pg_atomic_fetch_add_u64(&pbscan->phs_nallocated, 1);
 if (nallocated >= pbscan->phs_nblocks)
  page = InvalidBlockNumber;
 else
  page = (nallocated + pbscan->phs_startblock) % pbscan->phs_nblocks;
 if (pbscan->base.phs_syncscan)
 {
  if (page != InvalidBlockNumber)
   ss_report_location(rel, page);
  else if (nallocated == pbscan->phs_nblocks)
   ss_report_location(rel, pbscan->phs_startblock);
 }

 return page;
}
