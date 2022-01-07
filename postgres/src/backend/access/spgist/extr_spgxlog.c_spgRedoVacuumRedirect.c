
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int* offsets; int nToPlaceholder; int firstPlaceholder; int newestRedirectXid; } ;
typedef TYPE_1__ spgxlogVacuumRedirect ;
typedef int XLogRecPtr ;
struct TYPE_11__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_13__ {scalar_t__ tupstate; int pointer; } ;
struct TYPE_12__ {int nRedirection; int nPlaceholder; } ;
typedef TYPE_3__* SpGistPageOpaque ;
typedef TYPE_4__* SpGistDeadTuple ;
typedef int RelFileNode ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 scalar_t__ InHotStandby ;
 int InvalidOffsetNumber ;
 int ItemPointerSetInvalid (int *) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int) ;
 int PageGetMaxOffsetNumber (int ) ;
 int PageIndexMultiDelete (int ,int*,int) ;
 int PageSetLSN (int ,int ) ;
 int ResolveRecoveryConflictWithSnapshot (int ,int ) ;
 scalar_t__ SPGIST_PLACEHOLDER ;
 scalar_t__ SPGIST_REDIRECT ;
 TYPE_3__* SpGistPageGetOpaque (int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int ,int *,int *,int *) ;
 char* XLogRecGetData (TYPE_2__*) ;
 int* palloc (int) ;
 int pfree (int*) ;

__attribute__((used)) static void
spgRedoVacuumRedirect(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 char *ptr = XLogRecGetData(record);
 spgxlogVacuumRedirect *xldata = (spgxlogVacuumRedirect *) ptr;
 OffsetNumber *itemToPlaceholder;
 Buffer buffer;

 itemToPlaceholder = xldata->offsets;





 if (InHotStandby)
 {
  if (TransactionIdIsValid(xldata->newestRedirectXid))
  {
   RelFileNode node;

   XLogRecGetBlockTag(record, 0, &node, ((void*)0), ((void*)0));
   ResolveRecoveryConflictWithSnapshot(xldata->newestRedirectXid,
            node);
  }
 }

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  Page page = BufferGetPage(buffer);
  SpGistPageOpaque opaque = SpGistPageGetOpaque(page);
  int i;


  for (i = 0; i < xldata->nToPlaceholder; i++)
  {
   SpGistDeadTuple dt;

   dt = (SpGistDeadTuple) PageGetItem(page,
              PageGetItemId(page, itemToPlaceholder[i]));
   Assert(dt->tupstate == SPGIST_REDIRECT);
   dt->tupstate = SPGIST_PLACEHOLDER;
   ItemPointerSetInvalid(&dt->pointer);
  }

  Assert(opaque->nRedirection >= xldata->nToPlaceholder);
  opaque->nRedirection -= xldata->nToPlaceholder;
  opaque->nPlaceholder += xldata->nToPlaceholder;


  if (xldata->firstPlaceholder != InvalidOffsetNumber)
  {
   int max = PageGetMaxOffsetNumber(page);
   OffsetNumber *toDelete;

   toDelete = palloc(sizeof(OffsetNumber) * max);

   for (i = xldata->firstPlaceholder; i <= max; i++)
    toDelete[i - xldata->firstPlaceholder] = i;

   i = max - xldata->firstPlaceholder + 1;
   Assert(opaque->nPlaceholder >= i);
   opaque->nPlaceholder -= i;


   PageIndexMultiDelete(page, toDelete, i);

   pfree(toDelete);
  }

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
