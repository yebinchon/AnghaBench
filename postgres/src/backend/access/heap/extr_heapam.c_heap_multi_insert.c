
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int datalen; int t_hoff; int t_infomask; int t_infomask2; } ;
typedef TYPE_2__ xl_multi_insert_tuple ;
struct TYPE_18__ {int ntuples; int* offsets; int flags; } ;
typedef TYPE_3__ xl_heap_multi_insert ;
typedef int uint8 ;
typedef int XLogRecPtr ;
struct TYPE_19__ {int tts_tid; int tts_tableOid; } ;
typedef TYPE_4__ TupleTableSlot ;
typedef int TransactionId ;
struct TYPE_21__ {int t_len; int t_self; TYPE_1__* t_data; int t_tableOid; } ;
struct TYPE_20__ {char* data; } ;
struct TYPE_16__ {int t_hoff; int t_infomask; int t_infomask2; } ;
typedef scalar_t__ Size ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_5__ PGAlignedBlock ;
typedef int OffsetNumber ;
typedef TYPE_6__* HeapTuple ;
typedef int CommandId ;
typedef int BulkInsertState ;
typedef scalar_t__ Buffer ;


 int Assert (int) ;
 int AssertArg (int) ;
 int BLCKSZ ;
 int BufferGetBlockNumber (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 int CHECK_FOR_INTERRUPTS () ;
 int CacheInvalidateHeapTuple (int ,TYPE_6__*,int *) ;
 int CheckForSerializableConflictIn (int ,int *,scalar_t__) ;
 int END_CRIT_SECTION () ;
 TYPE_6__* ExecFetchSlotHeapTuple (TYPE_4__*,int,int *) ;
 int FirstOffsetNumber ;
 int GetCurrentTransactionId () ;
 int HEAP_DEFAULT_FILLFACTOR ;
 int HEAP_INSERT_NO_LOGICAL ;
 int HEAP_INSERT_SKIP_WAL ;
 scalar_t__ InvalidBuffer ;
 scalar_t__ IsCatalogRelation (int ) ;
 int ItemPointerGetOffsetNumber (int *) ;
 scalar_t__ MAXALIGN (int) ;
 int MarkBufferDirty (scalar_t__) ;
 int PageClearAllVisible (int ) ;
 scalar_t__ PageGetHeapFreeSpace (int ) ;
 int PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageIsAllVisible (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_KEEP_DATA ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_HEAP2_ID ;
 scalar_t__ RelationGetBufferForTuple (int ,int,scalar_t__,int,int ,scalar_t__*,int *) ;
 int RelationGetRelid (int ) ;
 scalar_t__ RelationGetTargetPageFreeSpace (int ,int ) ;
 int RelationIsAccessibleInLogicalDecoding (int ) ;
 int RelationIsLogicallyLogged (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int RelationPutHeapTuple (int ,scalar_t__,TYPE_6__*,int) ;
 int ReleaseBuffer (scalar_t__) ;
 scalar_t__ SHORTALIGN (char*) ;
 int START_CRIT_SECTION () ;
 int SizeOfHeapMultiInsert ;
 int SizeOfMultiInsertTuple ;
 int SizeofHeapTupleHeader ;
 int UnlockReleaseBuffer (scalar_t__) ;
 int VISIBILITYMAP_VALID_BITS ;
 int XLH_INSERT_ALL_VISIBLE_CLEARED ;
 int XLH_INSERT_CONTAINS_NEW_TUPLE ;
 int XLH_INSERT_LAST_IN_MULTI ;
 int XLOG_HEAP2_MULTI_INSERT ;
 int XLOG_HEAP_INIT_PAGE ;
 int XLOG_INCLUDE_ORIGIN ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int ,char*,int) ;
 int XLogRegisterBuffer (int ,scalar_t__,int) ;
 int XLogRegisterData (char*,int) ;
 int XLogSetRecordFlags (int ) ;
 TYPE_6__* heap_prepare_insert (int ,TYPE_6__*,int ,int ,int) ;
 int log_heap_new_cid (int ,TYPE_6__*) ;
 int memcpy (char*,char*,int) ;
 TYPE_6__** palloc (int) ;
 int pgstat_count_heap_insert (int ,int) ;
 int visibilitymap_clear (int ,int ,scalar_t__,int ) ;

void
heap_multi_insert(Relation relation, TupleTableSlot **slots, int ntuples,
      CommandId cid, int options, BulkInsertState bistate)
{
 TransactionId xid = GetCurrentTransactionId();
 HeapTuple *heaptuples;
 int i;
 int ndone;
 PGAlignedBlock scratch;
 Page page;
 bool needwal;
 Size saveFreeSpace;
 bool need_tuple_data = RelationIsLogicallyLogged(relation);
 bool need_cids = RelationIsAccessibleInLogicalDecoding(relation);


 AssertArg(!(options & HEAP_INSERT_NO_LOGICAL));

 needwal = !(options & HEAP_INSERT_SKIP_WAL) && RelationNeedsWAL(relation);
 saveFreeSpace = RelationGetTargetPageFreeSpace(relation,
               HEAP_DEFAULT_FILLFACTOR);


 heaptuples = palloc(ntuples * sizeof(HeapTuple));
 for (i = 0; i < ntuples; i++)
 {
  HeapTuple tuple;

  tuple = ExecFetchSlotHeapTuple(slots[i], 1, ((void*)0));
  slots[i]->tts_tableOid = RelationGetRelid(relation);
  tuple->t_tableOid = slots[i]->tts_tableOid;
  heaptuples[i] = heap_prepare_insert(relation, tuple, xid, cid,
           options);
 }
 CheckForSerializableConflictIn(relation, ((void*)0), InvalidBuffer);

 ndone = 0;
 while (ndone < ntuples)
 {
  Buffer buffer;
  Buffer vmbuffer = InvalidBuffer;
  bool all_visible_cleared = 0;
  int nthispage;

  CHECK_FOR_INTERRUPTS();





  buffer = RelationGetBufferForTuple(relation, heaptuples[ndone]->t_len,
             InvalidBuffer, options, bistate,
             &vmbuffer, ((void*)0));
  page = BufferGetPage(buffer);


  START_CRIT_SECTION();





  RelationPutHeapTuple(relation, buffer, heaptuples[ndone], 0);
  for (nthispage = 1; ndone + nthispage < ntuples; nthispage++)
  {
   HeapTuple heaptup = heaptuples[ndone + nthispage];

   if (PageGetHeapFreeSpace(page) < MAXALIGN(heaptup->t_len) + saveFreeSpace)
    break;

   RelationPutHeapTuple(relation, buffer, heaptup, 0);





   if (needwal && need_cids)
    log_heap_new_cid(relation, heaptup);
  }

  if (PageIsAllVisible(page))
  {
   all_visible_cleared = 1;
   PageClearAllVisible(page);
   visibilitymap_clear(relation,
        BufferGetBlockNumber(buffer),
        vmbuffer, VISIBILITYMAP_VALID_BITS);
  }





  MarkBufferDirty(buffer);


  if (needwal)
  {
   XLogRecPtr recptr;
   xl_heap_multi_insert *xlrec;
   uint8 info = XLOG_HEAP2_MULTI_INSERT;
   char *tupledata;
   int totaldatalen;
   char *scratchptr = scratch.data;
   bool init;
   int bufflags = 0;





   init = (ItemPointerGetOffsetNumber(&(heaptuples[ndone]->t_self)) == FirstOffsetNumber &&
     PageGetMaxOffsetNumber(page) == FirstOffsetNumber + nthispage - 1);


   xlrec = (xl_heap_multi_insert *) scratchptr;
   scratchptr += SizeOfHeapMultiInsert;







   if (!init)
    scratchptr += nthispage * sizeof(OffsetNumber);


   tupledata = scratchptr;

   xlrec->flags = all_visible_cleared ? XLH_INSERT_ALL_VISIBLE_CLEARED : 0;
   xlrec->ntuples = nthispage;





   for (i = 0; i < nthispage; i++)
   {
    HeapTuple heaptup = heaptuples[ndone + i];
    xl_multi_insert_tuple *tuphdr;
    int datalen;

    if (!init)
     xlrec->offsets[i] = ItemPointerGetOffsetNumber(&heaptup->t_self);

    tuphdr = (xl_multi_insert_tuple *) SHORTALIGN(scratchptr);
    scratchptr = ((char *) tuphdr) + SizeOfMultiInsertTuple;

    tuphdr->t_infomask2 = heaptup->t_data->t_infomask2;
    tuphdr->t_infomask = heaptup->t_data->t_infomask;
    tuphdr->t_hoff = heaptup->t_data->t_hoff;


    datalen = heaptup->t_len - SizeofHeapTupleHeader;
    memcpy(scratchptr,
        (char *) heaptup->t_data + SizeofHeapTupleHeader,
        datalen);
    tuphdr->datalen = datalen;
    scratchptr += datalen;
   }
   totaldatalen = scratchptr - tupledata;
   Assert((scratchptr - scratch.data) < BLCKSZ);

   if (need_tuple_data)
    xlrec->flags |= XLH_INSERT_CONTAINS_NEW_TUPLE;






   if (ndone + nthispage == ntuples)
    xlrec->flags |= XLH_INSERT_LAST_IN_MULTI;

   if (init)
   {
    info |= XLOG_HEAP_INIT_PAGE;
    bufflags |= REGBUF_WILL_INIT;
   }





   if (need_tuple_data)
    bufflags |= REGBUF_KEEP_DATA;

   XLogBeginInsert();
   XLogRegisterData((char *) xlrec, tupledata - scratch.data);
   XLogRegisterBuffer(0, buffer, REGBUF_STANDARD | bufflags);

   XLogRegisterBufData(0, tupledata, totaldatalen);


   XLogSetRecordFlags(XLOG_INCLUDE_ORIGIN);

   recptr = XLogInsert(RM_HEAP2_ID, info);

   PageSetLSN(page, recptr);
  }

  END_CRIT_SECTION();

  UnlockReleaseBuffer(buffer);
  if (vmbuffer != InvalidBuffer)
   ReleaseBuffer(vmbuffer);

  ndone += nthispage;
 }
 CheckForSerializableConflictIn(relation, ((void*)0), InvalidBuffer);







 if (IsCatalogRelation(relation))
 {
  for (i = 0; i < ntuples; i++)
   CacheInvalidateHeapTuple(relation, heaptuples[i], ((void*)0));
 }


 for (i = 0; i < ntuples; i++)
  slots[i]->tts_tid = heaptuples[i]->t_self;

 pgstat_count_heap_insert(relation, ntuples);
}
