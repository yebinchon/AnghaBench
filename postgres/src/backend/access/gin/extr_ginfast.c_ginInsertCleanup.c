
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


typedef int uint32 ;
struct TYPE_19__ {long allocatedMemory; TYPE_2__* ginstate; } ;
struct TYPE_18__ {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_17__ {int index; } ;
struct TYPE_16__ {int maxvalues; } ;
struct TYPE_15__ {scalar_t__ rightlink; } ;
typedef long Size ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int MemoryContext ;
typedef TYPE_1__ KeyArray ;
typedef int ItemPointerData ;
typedef int IndexBulkDeleteResult ;
typedef TYPE_2__ GinState ;
typedef int GinNullCategory ;
typedef TYPE_3__ GinMetaPageData ;
typedef int Datum ;
typedef TYPE_4__ BuildAccumulator ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;
 int BufferGetPage (int ) ;
 int ConditionalLockPage (int ,scalar_t__,int ) ;
 int CurrentMemoryContext ;
 int ExclusiveLock ;
 scalar_t__ FirstOffsetNumber ;
 int GIN_EXCLUSIVE ;
 scalar_t__ GIN_METAPAGE_BLKNO ;
 int GIN_SHARE ;
 int GIN_UNLOCK ;
 TYPE_3__* GinPageGetMeta (int ) ;
 TYPE_13__* GinPageGetOpaque (int ) ;
 scalar_t__ GinPageHasFullRow (int ) ;
 int GinPageIsDeleted (int ) ;
 int IndexFreeSpaceMapVacuum (int ) ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ IsAutoVacuumWorkerProcess () ;
 int LockBuffer (int ,int ) ;
 int LockPage (int ,scalar_t__,int ) ;
 int MemoryContextDelete (int ) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int ReadBuffer (int ,scalar_t__) ;
 int ReleaseBuffer (int ) ;
 int UnlockPage (int ,scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int autovacuum_work_mem ;
 int ginBeginBAScan (TYPE_4__*) ;
 int ginEntryInsert (TYPE_2__*,scalar_t__,int ,int ,int *,int ,int *) ;
 int * ginGetBAEntry (TYPE_4__*,scalar_t__*,int *,int *,int *) ;
 int ginInitBA (TYPE_4__*) ;
 int initKeyArray (TYPE_1__*,int) ;
 int maintenance_work_mem ;
 int processPendingPage (TYPE_4__*,TYPE_1__*,int ,scalar_t__) ;
 int shiftList (int ,int ,scalar_t__,int,int *) ;
 int vacuum_delay_point () ;
 long work_mem ;

void
ginInsertCleanup(GinState *ginstate, bool full_clean,
     bool fill_fsm, bool forceCleanup,
     IndexBulkDeleteResult *stats)
{
 Relation index = ginstate->index;
 Buffer metabuffer,
    buffer;
 Page metapage,
    page;
 GinMetaPageData *metadata;
 MemoryContext opCtx,
    oldCtx;
 BuildAccumulator accum;
 KeyArray datums;
 BlockNumber blkno,
    blknoFinish;
 bool cleanupFinish = 0;
 bool fsm_vac = 0;
 Size workMemory;
 if (forceCleanup)
 {




  LockPage(index, GIN_METAPAGE_BLKNO, ExclusiveLock);
  workMemory =
   (IsAutoVacuumWorkerProcess() && autovacuum_work_mem != -1) ?
   autovacuum_work_mem : maintenance_work_mem;
 }
 else
 {





  if (!ConditionalLockPage(index, GIN_METAPAGE_BLKNO, ExclusiveLock))
   return;
  workMemory = work_mem;
 }

 metabuffer = ReadBuffer(index, GIN_METAPAGE_BLKNO);
 LockBuffer(metabuffer, GIN_SHARE);
 metapage = BufferGetPage(metabuffer);
 metadata = GinPageGetMeta(metapage);

 if (metadata->head == InvalidBlockNumber)
 {

  UnlockReleaseBuffer(metabuffer);
  UnlockPage(index, GIN_METAPAGE_BLKNO, ExclusiveLock);
  return;
 }





 blknoFinish = metadata->tail;




 blkno = metadata->head;
 buffer = ReadBuffer(index, blkno);
 LockBuffer(buffer, GIN_SHARE);
 page = BufferGetPage(buffer);

 LockBuffer(metabuffer, GIN_UNLOCK);




 opCtx = AllocSetContextCreate(CurrentMemoryContext,
          "GIN insert cleanup temporary context",
          ALLOCSET_DEFAULT_SIZES);

 oldCtx = MemoryContextSwitchTo(opCtx);

 initKeyArray(&datums, 128);
 ginInitBA(&accum);
 accum.ginstate = ginstate;






 for (;;)
 {
  Assert(!GinPageIsDeleted(page));







  if (blkno == blknoFinish && full_clean == 0)
   cleanupFinish = 1;




  processPendingPage(&accum, &datums, page, FirstOffsetNumber);

  vacuum_delay_point();






  if (GinPageGetOpaque(page)->rightlink == InvalidBlockNumber ||
   (GinPageHasFullRow(page) &&
    (accum.allocatedMemory >= workMemory * 1024L)))
  {
   ItemPointerData *list;
   uint32 nlist;
   Datum key;
   GinNullCategory category;
   OffsetNumber maxoff,
      attnum;






   maxoff = PageGetMaxOffsetNumber(page);
   LockBuffer(buffer, GIN_UNLOCK);






   ginBeginBAScan(&accum);
   while ((list = ginGetBAEntry(&accum,
           &attnum, &key, &category, &nlist)) != ((void*)0))
   {
    ginEntryInsert(ginstate, attnum, key, category,
          list, nlist, ((void*)0));
    vacuum_delay_point();
   }




   LockBuffer(metabuffer, GIN_EXCLUSIVE);
   LockBuffer(buffer, GIN_SHARE);

   Assert(!GinPageIsDeleted(page));
   if (PageGetMaxOffsetNumber(page) != maxoff)
   {
    ginInitBA(&accum);
    processPendingPage(&accum, &datums, page, maxoff + 1);

    ginBeginBAScan(&accum);
    while ((list = ginGetBAEntry(&accum,
            &attnum, &key, &category, &nlist)) != ((void*)0))
     ginEntryInsert(ginstate, attnum, key, category,
           list, nlist, ((void*)0));
   }




   blkno = GinPageGetOpaque(page)->rightlink;
   UnlockReleaseBuffer(buffer);






   shiftList(index, metabuffer, blkno, fill_fsm, stats);


   fsm_vac = 1;

   Assert(blkno == metadata->head);
   LockBuffer(metabuffer, GIN_UNLOCK);





   if (blkno == InvalidBlockNumber || cleanupFinish)
    break;




   MemoryContextReset(opCtx);
   initKeyArray(&datums, datums.maxvalues);
   ginInitBA(&accum);
  }
  else
  {
   blkno = GinPageGetOpaque(page)->rightlink;
   UnlockReleaseBuffer(buffer);
  }




  vacuum_delay_point();
  buffer = ReadBuffer(index, blkno);
  LockBuffer(buffer, GIN_SHARE);
  page = BufferGetPage(buffer);
 }

 UnlockPage(index, GIN_METAPAGE_BLKNO, ExclusiveLock);
 ReleaseBuffer(metabuffer);






 if (fsm_vac && fill_fsm)
  IndexFreeSpaceMapVacuum(index);


 MemoryContextSwitchTo(oldCtx);
 MemoryContextDelete(opCtx);
}
