
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int io_concurrency ;
struct TYPE_10__ {int nitems; int * tids; scalar_t__ next_item; scalar_t__ cur_hblkno; } ;
typedef TYPE_2__ XidHorizonPrefetchState ;
typedef int TransactionId ;
struct TYPE_11__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {int reltablespace; } ;
typedef TYPE_3__* Relation ;
typedef int * Page ;
typedef int OffsetNumber ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;
typedef int ItemId ;
typedef scalar_t__ HeapTupleHeader ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int * BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int HeapTupleHeaderAdvanceLatestRemovedXid (scalar_t__,int *) ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 int InvalidTransactionId ;
 scalar_t__ IsCatalogRelation (TYPE_3__*) ;
 int ItemIdGetRedirect (int ) ;
 scalar_t__ ItemIdHasStorage (int ) ;
 scalar_t__ ItemIdIsDead (int ) ;
 scalar_t__ ItemIdIsRedirected (int ) ;
 int ItemIdIsUsed (int ) ;
 scalar_t__ ItemPointerCompare ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int LockBuffer (int ,int ) ;
 int MAX_IO_CONCURRENCY ;
 int Min (int ,int ) ;
 scalar_t__ PageGetItem (int *,int ) ;
 int PageGetItemId (int *,int ) ;
 int ReadBuffer (TYPE_3__*,scalar_t__) ;
 int ReleaseBuffer (int ) ;
 int effective_io_concurrency ;
 int get_tablespace_io_concurrency (int ) ;
 int qsort (void*,int,int,int (*) (void const*,void const*)) ;
 int xid_horizon_prefetch_buffer (TYPE_3__*,TYPE_2__*,int) ;

TransactionId
heap_compute_xid_horizon_for_tuples(Relation rel,
         ItemPointerData *tids,
         int nitems)
{
 TransactionId latestRemovedXid = InvalidTransactionId;
 BlockNumber hblkno;
 Buffer buf = InvalidBuffer;
 Page hpage;
 qsort((void *) tids, nitems, sizeof(ItemPointerData),
    (int (*) (const void *, const void *)) ItemPointerCompare);
 hblkno = InvalidBlockNumber;
 hpage = ((void*)0);
 for (int i = 0; i < nitems; i++)
 {
  ItemPointer htid = &tids[i];
  ItemId hitemid;
  OffsetNumber hoffnum;





  if (hblkno == InvalidBlockNumber ||
   ItemPointerGetBlockNumber(htid) != hblkno)
  {

   if (BufferIsValid(buf))
   {
    LockBuffer(buf, BUFFER_LOCK_UNLOCK);
    ReleaseBuffer(buf);
   }

   hblkno = ItemPointerGetBlockNumber(htid);

   buf = ReadBuffer(rel, hblkno);
   hpage = BufferGetPage(buf);

   LockBuffer(buf, BUFFER_LOCK_SHARE);
  }

  hoffnum = ItemPointerGetOffsetNumber(htid);
  hitemid = PageGetItemId(hpage, hoffnum);




  while (ItemIdIsRedirected(hitemid))
  {
   hoffnum = ItemIdGetRedirect(hitemid);
   hitemid = PageGetItemId(hpage, hoffnum);
   CHECK_FOR_INTERRUPTS();
  }







  if (ItemIdHasStorage(hitemid))
  {
   HeapTupleHeader htuphdr;

   htuphdr = (HeapTupleHeader) PageGetItem(hpage, hitemid);

   HeapTupleHeaderAdvanceLatestRemovedXid(htuphdr, &latestRemovedXid);
  }
  else if (ItemIdIsDead(hitemid))
  {






  }
  else
   Assert(!ItemIdIsUsed(hitemid));

 }

 if (BufferIsValid(buf))
 {
  LockBuffer(buf, BUFFER_LOCK_UNLOCK);
  ReleaseBuffer(buf);
 }
 return latestRemovedXid;
}
