
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_3__ {int rs_flags; } ;
struct TYPE_4__ {scalar_t__ rs_nblocks; scalar_t__ rs_numblocks; scalar_t__ rs_startblock; TYPE_1__ rs_base; int rs_inited; } ;
typedef TYPE_2__* HeapScanDesc ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int SO_ALLOW_SYNC ;

void
heap_setscanlimits(TableScanDesc sscan, BlockNumber startBlk, BlockNumber numBlks)
{
 HeapScanDesc scan = (HeapScanDesc) sscan;

 Assert(!scan->rs_inited);

 Assert(!(scan->rs_base.rs_flags & SO_ALLOW_SYNC));


 Assert(startBlk == 0 || startBlk < scan->rs_nblocks);

 scan->rs_startblock = startBlk;
 scan->rs_numblocks = numBlks;
}
