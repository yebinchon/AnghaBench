
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int next; int count; int tids; } ;
typedef TYPE_1__ corrupt_items ;
typedef int TransactionId ;
struct TYPE_8__ {int t_self; scalar_t__ t_data; int t_tableOid; int t_len; } ;
typedef int Relation ;
typedef int Page ;
typedef int Oid ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemPointerData ;
typedef int ItemId ;
typedef scalar_t__ HeapTupleHeader ;
typedef TYPE_2__ HeapTupleData ;
typedef int BufferAccessStrategy ;
typedef scalar_t__ Buffer ;
typedef scalar_t__ BlockNumber ;


 int AccessShareLock ;
 int BAS_BULKREAD ;
 int BUFFER_LOCK_SHARE ;
 int BufferGetPage (scalar_t__) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ FirstOffsetNumber ;
 int GetAccessStrategy (int ) ;
 int GetOldestXmin (int *,int ) ;
 scalar_t__ InvalidBuffer ;
 int InvalidTransactionId ;
 int ItemIdGetLength (int ) ;
 scalar_t__ ItemIdIsDead (int ) ;
 scalar_t__ ItemIdIsRedirected (int ) ;
 int ItemIdIsUsed (int ) ;
 int ItemPointerSet (int *,scalar_t__,scalar_t__) ;
 int LockBuffer (scalar_t__,int ) ;
 int MAIN_FORKNUM ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 int PROCARRAY_FLAGS_VACUUM ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int RBM_NORMAL ;
 scalar_t__ ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int ReleaseBuffer (scalar_t__) ;
 int TransactionIdPrecedes (int ,int ) ;
 int UnlockReleaseBuffer (scalar_t__) ;
 scalar_t__ VM_ALL_FROZEN (int ,scalar_t__,scalar_t__*) ;
 scalar_t__ VM_ALL_VISIBLE (int ,scalar_t__,scalar_t__*) ;
 int check_relation_relkind (int ) ;
 scalar_t__ heap_tuple_needs_eventual_freeze (scalar_t__) ;
 int palloc (int) ;
 TYPE_1__* palloc0 (int) ;
 int record_corrupt_item (TYPE_1__*,int *) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;
 int tuple_all_visible (TYPE_2__*,int ,scalar_t__) ;

__attribute__((used)) static corrupt_items *
collect_corrupt_items(Oid relid, bool all_visible, bool all_frozen)
{
 Relation rel;
 BlockNumber nblocks;
 corrupt_items *items;
 BlockNumber blkno;
 Buffer vmbuffer = InvalidBuffer;
 BufferAccessStrategy bstrategy = GetAccessStrategy(BAS_BULKREAD);
 TransactionId OldestXmin = InvalidTransactionId;

 if (all_visible)
 {

  OldestXmin = GetOldestXmin(((void*)0), PROCARRAY_FLAGS_VACUUM);
 }

 rel = relation_open(relid, AccessShareLock);


 check_relation_relkind(rel);

 nblocks = RelationGetNumberOfBlocks(rel);
 items = palloc0(sizeof(corrupt_items));
 items->next = 0;
 items->count = 64;
 items->tids = palloc(items->count * sizeof(ItemPointerData));


 for (blkno = 0; blkno < nblocks; ++blkno)
 {
  bool check_frozen = 0;
  bool check_visible = 0;
  Buffer buffer;
  Page page;
  OffsetNumber offnum,
     maxoff;


  CHECK_FOR_INTERRUPTS();


  if (all_frozen && VM_ALL_FROZEN(rel, blkno, &vmbuffer))
   check_frozen = 1;
  if (all_visible && VM_ALL_VISIBLE(rel, blkno, &vmbuffer))
   check_visible = 1;
  if (!check_visible && !check_frozen)
   continue;


  buffer = ReadBufferExtended(rel, MAIN_FORKNUM, blkno, RBM_NORMAL,
         bstrategy);
  LockBuffer(buffer, BUFFER_LOCK_SHARE);

  page = BufferGetPage(buffer);
  maxoff = PageGetMaxOffsetNumber(page);





  if (check_frozen && !VM_ALL_FROZEN(rel, blkno, &vmbuffer))
   check_frozen = 0;
  if (check_visible && !VM_ALL_VISIBLE(rel, blkno, &vmbuffer))
   check_visible = 0;
  if (!check_visible && !check_frozen)
  {
   UnlockReleaseBuffer(buffer);
   continue;
  }


  for (offnum = FirstOffsetNumber;
    offnum <= maxoff;
    offnum = OffsetNumberNext(offnum))
  {
   HeapTupleData tuple;
   ItemId itemid;

   itemid = PageGetItemId(page, offnum);


   if (!ItemIdIsUsed(itemid) || ItemIdIsRedirected(itemid))
    continue;


   if (ItemIdIsDead(itemid))
   {
    ItemPointerSet(&(tuple.t_self), blkno, offnum);
    record_corrupt_item(items, &tuple.t_self);
    continue;
   }


   ItemPointerSet(&(tuple.t_self), blkno, offnum);
   tuple.t_data = (HeapTupleHeader) PageGetItem(page, itemid);
   tuple.t_len = ItemIdGetLength(itemid);
   tuple.t_tableOid = relid;





   if (check_visible &&
    !tuple_all_visible(&tuple, OldestXmin, buffer))
   {
    TransactionId RecomputedOldestXmin;
    RecomputedOldestXmin = GetOldestXmin(((void*)0), PROCARRAY_FLAGS_VACUUM);

    if (!TransactionIdPrecedes(OldestXmin, RecomputedOldestXmin))
     record_corrupt_item(items, &tuple.t_self);
    else
    {
     OldestXmin = RecomputedOldestXmin;
     if (!tuple_all_visible(&tuple, OldestXmin, buffer))
      record_corrupt_item(items, &tuple.t_self);
    }
   }





   if (check_frozen)
   {
    if (heap_tuple_needs_eventual_freeze(tuple.t_data))
     record_corrupt_item(items, &tuple.t_self);
   }
  }

  UnlockReleaseBuffer(buffer);
 }


 if (vmbuffer != InvalidBuffer)
  ReleaseBuffer(vmbuffer);
 relation_close(rel, AccessShareLock);







 items->count = items->next;
 items->next = 0;

 return items;
}
