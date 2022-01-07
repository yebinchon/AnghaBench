
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_5__ {double tuple_len; double free_space; double dead_tuple_len; int table_len; int scanned_percent; double tuple_percent; double dead_tuple_percent; double free_percent; int tuple_count; int dead_tuple_count; } ;
typedef TYPE_1__ output_type ;
typedef int TransactionId ;
struct TYPE_6__ {double t_len; int t_tableOid; scalar_t__ t_data; int t_self; } ;
typedef scalar_t__ Size ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef scalar_t__ HeapTupleHeader ;
typedef TYPE_2__ HeapTupleData ;
typedef int BufferAccessStrategy ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int ) ;
 int BAS_BULKREAD ;
 int BLCKSZ ;
 int BUFFER_LOCK_SHARE ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 scalar_t__ FirstOffsetNumber ;
 int GetAccessStrategy (int ) ;
 int GetOldestXmin (int ,int ) ;
 scalar_t__ GetRecordedFreeSpace (int ,int) ;





 int HeapTupleSatisfiesVacuum (TYPE_2__*,int ,int ) ;
 int InvalidBuffer ;
 double ItemIdGetLength (int ) ;
 scalar_t__ ItemIdIsDead (int ) ;
 int ItemIdIsNormal (int ) ;
 scalar_t__ ItemIdIsRedirected (int ) ;
 int ItemIdIsUsed (int ) ;
 int ItemPointerSet (int *,int,scalar_t__) ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 int PROCARRAY_FLAGS_VACUUM ;
 scalar_t__ PageGetHeapFreeSpace (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageIsEmpty (int ) ;
 scalar_t__ PageIsNew (int ) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,int,int ,int ) ;
 int RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelid (int ) ;
 int ReleaseBuffer (int ) ;
 scalar_t__ SizeOfPageHeaderData ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ VM_ALL_VISIBLE (int ,int,int *) ;
 int elog (int ,char*) ;
 int vac_estimate_reltuples (int ,int,int,int ) ;

__attribute__((used)) static void
statapprox_heap(Relation rel, output_type *stat)
{
 BlockNumber scanned,
    nblocks,
    blkno;
 Buffer vmbuffer = InvalidBuffer;
 BufferAccessStrategy bstrategy;
 TransactionId OldestXmin;

 OldestXmin = GetOldestXmin(rel, PROCARRAY_FLAGS_VACUUM);
 bstrategy = GetAccessStrategy(BAS_BULKREAD);

 nblocks = RelationGetNumberOfBlocks(rel);
 scanned = 0;

 for (blkno = 0; blkno < nblocks; blkno++)
 {
  Buffer buf;
  Page page;
  OffsetNumber offnum,
     maxoff;
  Size freespace;

  CHECK_FOR_INTERRUPTS();





  if (VM_ALL_VISIBLE(rel, blkno, &vmbuffer))
  {
   freespace = GetRecordedFreeSpace(rel, blkno);
   stat->tuple_len += BLCKSZ - freespace;
   stat->free_space += freespace;
   continue;
  }

  buf = ReadBufferExtended(rel, MAIN_FORKNUM, blkno,
         RBM_NORMAL, bstrategy);

  LockBuffer(buf, BUFFER_LOCK_SHARE);

  page = BufferGetPage(buf);





  if (!PageIsNew(page))
   stat->free_space += PageGetHeapFreeSpace(page);
  else
   stat->free_space += BLCKSZ - SizeOfPageHeaderData;


  scanned++;

  if (PageIsNew(page) || PageIsEmpty(page))
  {
   UnlockReleaseBuffer(buf);
   continue;
  }






  maxoff = PageGetMaxOffsetNumber(page);

  for (offnum = FirstOffsetNumber;
    offnum <= maxoff;
    offnum = OffsetNumberNext(offnum))
  {
   ItemId itemid;
   HeapTupleData tuple;

   itemid = PageGetItemId(page, offnum);

   if (!ItemIdIsUsed(itemid) || ItemIdIsRedirected(itemid) ||
    ItemIdIsDead(itemid))
   {
    continue;
   }

   Assert(ItemIdIsNormal(itemid));

   ItemPointerSet(&(tuple.t_self), blkno, offnum);

   tuple.t_data = (HeapTupleHeader) PageGetItem(page, itemid);
   tuple.t_len = ItemIdGetLength(itemid);
   tuple.t_tableOid = RelationGetRelid(rel);







   switch (HeapTupleSatisfiesVacuum(&tuple, OldestXmin, buf))
   {
    case 129:
    case 131:
     stat->tuple_len += tuple.t_len;
     stat->tuple_count++;
     break;
    case 132:
    case 128:
    case 130:
     stat->dead_tuple_len += tuple.t_len;
     stat->dead_tuple_count++;
     break;
    default:
     elog(ERROR, "unexpected HeapTupleSatisfiesVacuum result");
     break;
   }
  }

  UnlockReleaseBuffer(buf);
 }

 stat->table_len = (uint64) nblocks * BLCKSZ;
 stat->tuple_count = vac_estimate_reltuples(rel, nblocks, scanned,
              stat->tuple_count);




 if (nblocks != 0)
 {
  stat->scanned_percent = 100 * scanned / nblocks;
  stat->tuple_percent = 100.0 * stat->tuple_len / stat->table_len;
  stat->dead_tuple_percent = 100.0 * stat->dead_tuple_len / stat->table_len;
  stat->free_percent = 100.0 * stat->free_space / stat->table_len;
 }

 if (BufferIsValid(vmbuffer))
 {
  ReleaseBuffer(vmbuffer);
  vmbuffer = InvalidBuffer;
 }
}
