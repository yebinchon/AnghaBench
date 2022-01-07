
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* TableScanDesc ;
struct TYPE_5__ {int rs_cbuf; int rs_cindex; int rs_cblock; } ;
struct TYPE_4__ {int rs_rd; } ;
typedef TYPE_2__* HeapScanDesc ;
typedef int BufferAccessStrategy ;
typedef int BlockNumber ;


 int BUFFER_LOCK_SHARE ;
 int FirstOffsetNumber ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,int ,int ,int ) ;

__attribute__((used)) static bool
heapam_scan_analyze_next_block(TableScanDesc scan, BlockNumber blockno,
          BufferAccessStrategy bstrategy)
{
 HeapScanDesc hscan = (HeapScanDesc) scan;
 hscan->rs_cblock = blockno;
 hscan->rs_cindex = FirstOffsetNumber;
 hscan->rs_cbuf = ReadBufferExtended(scan->rs_rd, MAIN_FORKNUM,
          blockno, RBM_NORMAL, bstrategy);
 LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_SHARE);


 return 1;
}
