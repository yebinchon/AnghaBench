
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int flags; scalar_t__ offnum; } ;
typedef TYPE_2__ xl_heap_insert ;
struct TYPE_14__ {int t_hoff; int t_infomask; int t_infomask2; } ;
typedef TYPE_3__ xl_heap_header ;
typedef int uint8 ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_15__ {int t_len; int t_self; TYPE_1__* t_data; } ;
struct TYPE_12__ {int t_hoff; int t_infomask; int t_infomask2; } ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_4__* HeapTuple ;
typedef int CommandId ;
typedef int BulkInsertState ;
typedef scalar_t__ Buffer ;


 int Assert (int) ;
 scalar_t__ BufferGetBlockNumber (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 int CacheInvalidateHeapTuple (int ,TYPE_4__*,int *) ;
 int CheckForSerializableConflictIn (int ,int *,scalar_t__) ;
 int END_CRIT_SECTION () ;
 scalar_t__ FirstOffsetNumber ;
 int GetCurrentTransactionId () ;
 int HEAP_INSERT_NO_LOGICAL ;
 int HEAP_INSERT_SKIP_WAL ;
 int HEAP_INSERT_SPECULATIVE ;
 scalar_t__ InvalidBuffer ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 int MarkBufferDirty (scalar_t__) ;
 int PageClearAllVisible (int ) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageIsAllVisible (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_KEEP_DATA ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_HEAP_ID ;
 scalar_t__ RelationGetBufferForTuple (int ,int,scalar_t__,int,int ,scalar_t__*,int *) ;
 scalar_t__ RelationIsAccessibleInLogicalDecoding (int ) ;
 scalar_t__ RelationIsLogicallyLogged (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int RelationPutHeapTuple (int ,scalar_t__,TYPE_4__*,int) ;
 int ReleaseBuffer (scalar_t__) ;
 int START_CRIT_SECTION () ;
 int SizeOfHeapHeader ;
 int SizeOfHeapInsert ;
 int SizeofHeapTupleHeader ;
 int UnlockReleaseBuffer (scalar_t__) ;
 int VISIBILITYMAP_VALID_BITS ;
 int XLH_INSERT_ALL_VISIBLE_CLEARED ;
 int XLH_INSERT_CONTAINS_NEW_TUPLE ;
 int XLH_INSERT_IS_SPECULATIVE ;
 int XLOG_HEAP_INIT_PAGE ;
 int XLOG_HEAP_INSERT ;
 int XLOG_INCLUDE_ORIGIN ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int ,char*,int) ;
 int XLogRegisterBuffer (int ,scalar_t__,int) ;
 int XLogRegisterData (char*,int ) ;
 int XLogSetRecordFlags (int ) ;
 int heap_freetuple (TYPE_4__*) ;
 TYPE_4__* heap_prepare_insert (int ,TYPE_4__*,int ,int ,int) ;
 int log_heap_new_cid (int ,TYPE_4__*) ;
 int pgstat_count_heap_insert (int ,int) ;
 int visibilitymap_clear (int ,scalar_t__,scalar_t__,int ) ;

void
heap_insert(Relation relation, HeapTuple tup, CommandId cid,
   int options, BulkInsertState bistate)
{
 TransactionId xid = GetCurrentTransactionId();
 HeapTuple heaptup;
 Buffer buffer;
 Buffer vmbuffer = InvalidBuffer;
 bool all_visible_cleared = 0;







 heaptup = heap_prepare_insert(relation, tup, xid, cid, options);





 buffer = RelationGetBufferForTuple(relation, heaptup->t_len,
            InvalidBuffer, options, bistate,
            &vmbuffer, ((void*)0));
 CheckForSerializableConflictIn(relation, ((void*)0), InvalidBuffer);


 START_CRIT_SECTION();

 RelationPutHeapTuple(relation, buffer, heaptup,
       (options & HEAP_INSERT_SPECULATIVE) != 0);

 if (PageIsAllVisible(BufferGetPage(buffer)))
 {
  all_visible_cleared = 1;
  PageClearAllVisible(BufferGetPage(buffer));
  visibilitymap_clear(relation,
       ItemPointerGetBlockNumber(&(heaptup->t_self)),
       vmbuffer, VISIBILITYMAP_VALID_BITS);
 }
 MarkBufferDirty(buffer);


 if (!(options & HEAP_INSERT_SKIP_WAL) && RelationNeedsWAL(relation))
 {
  xl_heap_insert xlrec;
  xl_heap_header xlhdr;
  XLogRecPtr recptr;
  Page page = BufferGetPage(buffer);
  uint8 info = XLOG_HEAP_INSERT;
  int bufflags = 0;





  if (RelationIsAccessibleInLogicalDecoding(relation))
   log_heap_new_cid(relation, heaptup);






  if (ItemPointerGetOffsetNumber(&(heaptup->t_self)) == FirstOffsetNumber &&
   PageGetMaxOffsetNumber(page) == FirstOffsetNumber)
  {
   info |= XLOG_HEAP_INIT_PAGE;
   bufflags |= REGBUF_WILL_INIT;
  }

  xlrec.offnum = ItemPointerGetOffsetNumber(&heaptup->t_self);
  xlrec.flags = 0;
  if (all_visible_cleared)
   xlrec.flags |= XLH_INSERT_ALL_VISIBLE_CLEARED;
  if (options & HEAP_INSERT_SPECULATIVE)
   xlrec.flags |= XLH_INSERT_IS_SPECULATIVE;
  Assert(ItemPointerGetBlockNumber(&heaptup->t_self) == BufferGetBlockNumber(buffer));






  if (RelationIsLogicallyLogged(relation) &&
   !(options & HEAP_INSERT_NO_LOGICAL))
  {
   xlrec.flags |= XLH_INSERT_CONTAINS_NEW_TUPLE;
   bufflags |= REGBUF_KEEP_DATA;
  }

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfHeapInsert);

  xlhdr.t_infomask2 = heaptup->t_data->t_infomask2;
  xlhdr.t_infomask = heaptup->t_data->t_infomask;
  xlhdr.t_hoff = heaptup->t_data->t_hoff;






  XLogRegisterBuffer(0, buffer, REGBUF_STANDARD | bufflags);
  XLogRegisterBufData(0, (char *) &xlhdr, SizeOfHeapHeader);

  XLogRegisterBufData(0,
       (char *) heaptup->t_data + SizeofHeapTupleHeader,
       heaptup->t_len - SizeofHeapTupleHeader);


  XLogSetRecordFlags(XLOG_INCLUDE_ORIGIN);

  recptr = XLogInsert(RM_HEAP_ID, info);

  PageSetLSN(page, recptr);
 }

 END_CRIT_SECTION();

 UnlockReleaseBuffer(buffer);
 if (vmbuffer != InvalidBuffer)
  ReleaseBuffer(vmbuffer);







 CacheInvalidateHeapTuple(relation, heaptup, ((void*)0));


 pgstat_count_heap_insert(relation, 1);





 if (heaptup != tup)
 {
  tup->t_self = heaptup->t_self;
  heap_freetuple(heaptup);
 }
}
