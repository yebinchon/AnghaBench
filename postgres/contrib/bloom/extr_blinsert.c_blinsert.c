
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nEnd; size_t nStart; scalar_t__* notFullPage; } ;
typedef int Relation ;
typedef int Page ;
typedef size_t OffsetNumber ;
typedef int MemoryContext ;
typedef int ItemPointer ;
typedef int IndexUniqueCheck ;
typedef int IndexInfo ;
typedef int GenericXLogState ;
typedef int Datum ;
typedef int Buffer ;
typedef int BloomTuple ;
typedef int BloomState ;
typedef TYPE_1__ BloomMetaPageData ;
typedef scalar_t__ BlockNumber ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;
 scalar_t__ BLOOM_METAPAGE_BLKNO ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int * BloomFormTuple (int *,int ,int *,int*) ;
 int BloomInitPage (int ,int ) ;
 int BloomNewBuffer (int ) ;
 scalar_t__ BloomPageAddItem (int *,int ,int *) ;
 TYPE_1__* BloomPageGetMeta (int ) ;
 scalar_t__ BloomPageIsDeleted (int ) ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int CurrentMemoryContext ;
 int ERROR ;
 int GENERIC_XLOG_FULL_IMAGE ;
 int GenericXLogAbort (int *) ;
 int GenericXLogFinish (int *) ;
 int GenericXLogRegisterBuffer (int *,int ,int ) ;
 int * GenericXLogStart (int ) ;
 scalar_t__ InvalidBlockNumber ;
 int LockBuffer (int ,int ) ;
 int MemoryContextDelete (int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ PageIsNew (int ) ;
 int ReadBuffer (int ,scalar_t__) ;
 int ReleaseBuffer (int ) ;
 int UnlockReleaseBuffer (int ) ;
 int elog (int ,char*) ;
 int initBloomState (int *,int ) ;

bool
blinsert(Relation index, Datum *values, bool *isnull,
   ItemPointer ht_ctid, Relation heapRel,
   IndexUniqueCheck checkUnique,
   IndexInfo *indexInfo)
{
 BloomState blstate;
 BloomTuple *itup;
 MemoryContext oldCtx;
 MemoryContext insertCtx;
 BloomMetaPageData *metaData;
 Buffer buffer,
    metaBuffer;
 Page page,
    metaPage;
 BlockNumber blkno = InvalidBlockNumber;
 OffsetNumber nStart;
 GenericXLogState *state;

 insertCtx = AllocSetContextCreate(CurrentMemoryContext,
           "Bloom insert temporary context",
           ALLOCSET_DEFAULT_SIZES);

 oldCtx = MemoryContextSwitchTo(insertCtx);

 initBloomState(&blstate, index);
 itup = BloomFormTuple(&blstate, ht_ctid, values, isnull);





 metaBuffer = ReadBuffer(index, BLOOM_METAPAGE_BLKNO);
 LockBuffer(metaBuffer, BUFFER_LOCK_SHARE);
 metaData = BloomPageGetMeta(BufferGetPage(metaBuffer));

 if (metaData->nEnd > metaData->nStart)
 {
  Page page;

  blkno = metaData->notFullPage[metaData->nStart];
  Assert(blkno != InvalidBlockNumber);


  LockBuffer(metaBuffer, BUFFER_LOCK_UNLOCK);

  buffer = ReadBuffer(index, blkno);
  LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);

  state = GenericXLogStart(index);
  page = GenericXLogRegisterBuffer(state, buffer, 0);





  if (PageIsNew(page) || BloomPageIsDeleted(page))
   BloomInitPage(page, 0);

  if (BloomPageAddItem(&blstate, page, itup))
  {

   GenericXLogFinish(state);
   UnlockReleaseBuffer(buffer);
   ReleaseBuffer(metaBuffer);
   MemoryContextSwitchTo(oldCtx);
   MemoryContextDelete(insertCtx);
   return 0;
  }


  GenericXLogAbort(state);
  UnlockReleaseBuffer(buffer);
 }
 else
 {

  LockBuffer(metaBuffer, BUFFER_LOCK_UNLOCK);
 }





 LockBuffer(metaBuffer, BUFFER_LOCK_EXCLUSIVE);


 nStart = metaData->nStart;


 if (nStart < metaData->nEnd &&
  blkno == metaData->notFullPage[nStart])
  nStart++;






 for (;;)
 {
  state = GenericXLogStart(index);


  metaPage = GenericXLogRegisterBuffer(state, metaBuffer, 0);
  metaData = BloomPageGetMeta(metaPage);

  if (nStart >= metaData->nEnd)
   break;

  blkno = metaData->notFullPage[nStart];
  Assert(blkno != InvalidBlockNumber);

  buffer = ReadBuffer(index, blkno);
  LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);
  page = GenericXLogRegisterBuffer(state, buffer, 0);


  if (PageIsNew(page) || BloomPageIsDeleted(page))
   BloomInitPage(page, 0);

  if (BloomPageAddItem(&blstate, page, itup))
  {

   metaData->nStart = nStart;
   GenericXLogFinish(state);
   UnlockReleaseBuffer(buffer);
   UnlockReleaseBuffer(metaBuffer);
   MemoryContextSwitchTo(oldCtx);
   MemoryContextDelete(insertCtx);
   return 0;
  }


  GenericXLogAbort(state);
  UnlockReleaseBuffer(buffer);
  nStart++;
 }





 buffer = BloomNewBuffer(index);

 page = GenericXLogRegisterBuffer(state, buffer, GENERIC_XLOG_FULL_IMAGE);
 BloomInitPage(page, 0);

 if (!BloomPageAddItem(&blstate, page, itup))
 {

  elog(ERROR, "could not add new bloom tuple to empty page");
 }


 metaData->nStart = 0;
 metaData->nEnd = 1;
 metaData->notFullPage[0] = BufferGetBlockNumber(buffer);


 GenericXLogFinish(state);

 UnlockReleaseBuffer(buffer);
 UnlockReleaseBuffer(metaBuffer);

 MemoryContextSwitchTo(oldCtx);
 MemoryContextDelete(insertCtx);

 return 0;
}
