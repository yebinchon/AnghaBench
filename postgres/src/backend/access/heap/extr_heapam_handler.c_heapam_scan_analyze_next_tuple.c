
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef int TransactionId ;
typedef TYPE_2__* TableScanDesc ;
struct TYPE_11__ {scalar_t__ t_data; int t_len; int t_tableOid; int t_self; } ;
struct TYPE_9__ {TYPE_3__ tupdata; } ;
struct TYPE_13__ {TYPE_1__ base; } ;
struct TYPE_12__ {scalar_t__ rs_cindex; int rs_cbuf; int rs_cblock; } ;
struct TYPE_10__ {int rs_rd; } ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef scalar_t__ HeapTupleHeader ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* HeapScanDesc ;
typedef TYPE_5__ BufferHeapTupleTableSlot ;


 int Assert (int ) ;
 int BufferGetPage (int ) ;
 int ERROR ;
 int ExecClearTuple (int *) ;
 int ExecStoreBufferHeapTuple (TYPE_3__*,int *,int ) ;





 int HeapTupleHeaderGetUpdateXid (scalar_t__) ;
 int HeapTupleHeaderGetXmin (scalar_t__) ;
 int HeapTupleSatisfiesVacuum (TYPE_3__*,int ,int ) ;
 int InvalidBuffer ;
 int ItemIdGetLength (int ) ;
 scalar_t__ ItemIdIsDead (int ) ;
 int ItemIdIsNormal (int ) ;
 int ItemPointerSet (int *,int ,scalar_t__) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int RelationGetRelid (int ) ;
 int TTS_IS_BUFFERTUPLE (int *) ;
 int TransactionIdIsCurrentTransactionId (int ) ;
 int UnlockReleaseBuffer (int ) ;
 int elog (int ,char*) ;

__attribute__((used)) static bool
heapam_scan_analyze_next_tuple(TableScanDesc scan, TransactionId OldestXmin,
          double *liverows, double *deadrows,
          TupleTableSlot *slot)
{
 HeapScanDesc hscan = (HeapScanDesc) scan;
 Page targpage;
 OffsetNumber maxoffset;
 BufferHeapTupleTableSlot *hslot;

 Assert(TTS_IS_BUFFERTUPLE(slot));

 hslot = (BufferHeapTupleTableSlot *) slot;
 targpage = BufferGetPage(hscan->rs_cbuf);
 maxoffset = PageGetMaxOffsetNumber(targpage);


 for (; hscan->rs_cindex <= maxoffset; hscan->rs_cindex++)
 {
  ItemId itemid;
  HeapTuple targtuple = &hslot->base.tupdata;
  bool sample_it = 0;

  itemid = PageGetItemId(targpage, hscan->rs_cindex);







  if (!ItemIdIsNormal(itemid))
  {
   if (ItemIdIsDead(itemid))
    *deadrows += 1;
   continue;
  }

  ItemPointerSet(&targtuple->t_self, hscan->rs_cblock, hscan->rs_cindex);

  targtuple->t_tableOid = RelationGetRelid(scan->rs_rd);
  targtuple->t_data = (HeapTupleHeader) PageGetItem(targpage, itemid);
  targtuple->t_len = ItemIdGetLength(itemid);

  switch (HeapTupleSatisfiesVacuum(targtuple, OldestXmin,
           hscan->rs_cbuf))
  {
   case 129:
    sample_it = 1;
    *liverows += 1;
    break;

   case 132:
   case 128:

    *deadrows += 1;
    break;

   case 130:
    if (TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetXmin(targtuple->t_data)))
    {
     sample_it = 1;
     *liverows += 1;
    }
    break;

   case 131:
    if (TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetUpdateXid(targtuple->t_data)))
     *deadrows += 1;
    else
    {
     sample_it = 1;
     *liverows += 1;
    }
    break;

   default:
    elog(ERROR, "unexpected HeapTupleSatisfiesVacuum result");
    break;
  }

  if (sample_it)
  {
   ExecStoreBufferHeapTuple(targtuple, slot, hscan->rs_cbuf);
   hscan->rs_cindex++;


   return 1;
  }
 }


 UnlockReleaseBuffer(hscan->rs_cbuf);
 hscan->rs_cbuf = InvalidBuffer;


 ExecClearTuple(slot);

 return 0;
}
