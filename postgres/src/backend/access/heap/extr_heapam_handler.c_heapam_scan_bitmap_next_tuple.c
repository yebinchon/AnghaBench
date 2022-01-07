
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef TYPE_1__* TableScanDesc ;
struct TYPE_9__ {int t_self; int t_tableOid; int t_len; scalar_t__ t_data; } ;
struct TYPE_8__ {int rd_id; } ;
struct TYPE_7__ {size_t rs_cindex; size_t rs_ntuples; int rs_cbuf; TYPE_5__ rs_ctup; int rs_cblock; int * rs_vistuples; } ;
struct TYPE_6__ {TYPE_3__* rs_rd; } ;
typedef int TBMIterateResult ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef scalar_t__ HeapTupleHeader ;
typedef TYPE_2__* HeapScanDesc ;


 int Assert (int ) ;
 scalar_t__ BufferGetPage (int ) ;
 int ExecStoreBufferHeapTuple (TYPE_5__*,int *,int ) ;
 int ItemIdGetLength (int ) ;
 int ItemIdIsNormal (int ) ;
 int ItemPointerSet (int *,int ,int ) ;
 scalar_t__ PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,int ) ;
 int pgstat_count_heap_fetch (TYPE_3__*) ;

__attribute__((used)) static bool
heapam_scan_bitmap_next_tuple(TableScanDesc scan,
         TBMIterateResult *tbmres,
         TupleTableSlot *slot)
{
 HeapScanDesc hscan = (HeapScanDesc) scan;
 OffsetNumber targoffset;
 Page dp;
 ItemId lp;




 if (hscan->rs_cindex < 0 || hscan->rs_cindex >= hscan->rs_ntuples)
  return 0;

 targoffset = hscan->rs_vistuples[hscan->rs_cindex];
 dp = (Page) BufferGetPage(hscan->rs_cbuf);
 lp = PageGetItemId(dp, targoffset);
 Assert(ItemIdIsNormal(lp));

 hscan->rs_ctup.t_data = (HeapTupleHeader) PageGetItem((Page) dp, lp);
 hscan->rs_ctup.t_len = ItemIdGetLength(lp);
 hscan->rs_ctup.t_tableOid = scan->rs_rd->rd_id;
 ItemPointerSet(&hscan->rs_ctup.t_self, hscan->rs_cblock, targoffset);

 pgstat_count_heap_fetch(scan->rs_rd);





 ExecStoreBufferHeapTuple(&hscan->rs_ctup,
        slot,
        hscan->rs_cbuf);

 hscan->rs_cindex++;

 return 1;
}
