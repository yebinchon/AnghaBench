
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_1__* TableScanDesc ;
struct TYPE_20__ {int rd_id; } ;
struct TYPE_19__ {int rs_ntuples; scalar_t__ rs_nblocks; scalar_t__* rs_vistuples; int rs_cbuf; scalar_t__ rs_cblock; scalar_t__ rs_cindex; } ;
struct TYPE_18__ {int t_self; int t_tableOid; int t_len; scalar_t__ t_data; } ;
struct TYPE_17__ {scalar_t__ blockno; scalar_t__ ntuples; scalar_t__* offsets; } ;
struct TYPE_16__ {TYPE_7__* rs_rd; int rs_snapshot; } ;
typedef TYPE_2__ TBMIterateResult ;
typedef int Snapshot ;
typedef scalar_t__ Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemPointerData ;
typedef int ItemId ;
typedef scalar_t__ HeapTupleHeader ;
typedef TYPE_3__ HeapTupleData ;
typedef TYPE_4__* HeapScanDesc ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetPage (int ) ;
 int CheckForSerializableConflictOut (int,TYPE_7__*,TYPE_3__*,int ,int ) ;
 scalar_t__ FirstOffsetNumber ;
 int HeapTupleSatisfiesVisibility (TYPE_3__*,int ,int ) ;
 int ItemIdGetLength (int ) ;
 int ItemIdIsNormal (int ) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 int ItemPointerSet (int *,scalar_t__,scalar_t__) ;
 int LockBuffer (int ,int ) ;
 int MaxHeapTuplesPerPage ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (scalar_t__) ;
 int PredicateLockTuple (TYPE_7__*,TYPE_3__*,int ) ;
 int ReleaseAndReadBuffer (int ,TYPE_7__*,scalar_t__) ;
 scalar_t__ heap_hot_search_buffer (int *,TYPE_7__*,int ,int ,TYPE_3__*,int *,int) ;
 int heap_page_prune_opt (TYPE_7__*,int ) ;

__attribute__((used)) static bool
heapam_scan_bitmap_next_block(TableScanDesc scan,
         TBMIterateResult *tbmres)
{
 HeapScanDesc hscan = (HeapScanDesc) scan;
 BlockNumber page = tbmres->blockno;
 Buffer buffer;
 Snapshot snapshot;
 int ntup;

 hscan->rs_cindex = 0;
 hscan->rs_ntuples = 0;







 if (page >= hscan->rs_nblocks)
  return 0;




 hscan->rs_cbuf = ReleaseAndReadBuffer(hscan->rs_cbuf,
            scan->rs_rd,
            page);
 hscan->rs_cblock = page;
 buffer = hscan->rs_cbuf;
 snapshot = scan->rs_snapshot;

 ntup = 0;




 heap_page_prune_opt(scan->rs_rd, buffer);






 LockBuffer(buffer, BUFFER_LOCK_SHARE);




 if (tbmres->ntuples >= 0)
 {





  int curslot;

  for (curslot = 0; curslot < tbmres->ntuples; curslot++)
  {
   OffsetNumber offnum = tbmres->offsets[curslot];
   ItemPointerData tid;
   HeapTupleData heapTuple;

   ItemPointerSet(&tid, page, offnum);
   if (heap_hot_search_buffer(&tid, scan->rs_rd, buffer, snapshot,
            &heapTuple, ((void*)0), 1))
    hscan->rs_vistuples[ntup++] = ItemPointerGetOffsetNumber(&tid);
  }
 }
 else
 {




  Page dp = (Page) BufferGetPage(buffer);
  OffsetNumber maxoff = PageGetMaxOffsetNumber(dp);
  OffsetNumber offnum;

  for (offnum = FirstOffsetNumber; offnum <= maxoff; offnum = OffsetNumberNext(offnum))
  {
   ItemId lp;
   HeapTupleData loctup;
   bool valid;

   lp = PageGetItemId(dp, offnum);
   if (!ItemIdIsNormal(lp))
    continue;
   loctup.t_data = (HeapTupleHeader) PageGetItem((Page) dp, lp);
   loctup.t_len = ItemIdGetLength(lp);
   loctup.t_tableOid = scan->rs_rd->rd_id;
   ItemPointerSet(&loctup.t_self, page, offnum);
   valid = HeapTupleSatisfiesVisibility(&loctup, snapshot, buffer);
   if (valid)
   {
    hscan->rs_vistuples[ntup++] = offnum;
    PredicateLockTuple(scan->rs_rd, &loctup, snapshot);
   }
   CheckForSerializableConflictOut(valid, scan->rs_rd, &loctup,
           buffer, snapshot);
  }
 }

 LockBuffer(buffer, BUFFER_LOCK_UNLOCK);

 Assert(ntup <= MaxHeapTuplesPerPage);
 hscan->rs_ntuples = ntup;

 return ntup > 0;
}
