
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nDead; int nPlaceholder; int nMove; int nChain; int stateSrc; } ;
typedef TYPE_1__ spgxlogVacuumLeaf ;
typedef int XLogRecPtr ;
struct TYPE_8__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_9__ {scalar_t__ tupstate; int nextOffset; } ;
typedef int SpGistState ;
typedef TYPE_3__* SpGistLeafTuple ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemIdData ;
typedef int * ItemId ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int InvalidBlockNumber ;
 int InvalidOffsetNumber ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetItem (int ,int *) ;
 int * PageGetItemId (int ,int ) ;
 int PageSetLSN (int ,int ) ;
 int SPGIST_DEAD ;
 scalar_t__ SPGIST_LIVE ;
 int SPGIST_PLACEHOLDER ;
 int SizeOfSpgxlogVacuumLeaf ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 char* XLogRecGetData (TYPE_2__*) ;
 int fillFakeState (int *,int ) ;
 int spgPageIndexMultiDelete (int *,int ,int *,int,int ,int ,int ,int ) ;

__attribute__((used)) static void
spgRedoVacuumLeaf(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 char *ptr = XLogRecGetData(record);
 spgxlogVacuumLeaf *xldata = (spgxlogVacuumLeaf *) ptr;
 OffsetNumber *toDead;
 OffsetNumber *toPlaceholder;
 OffsetNumber *moveSrc;
 OffsetNumber *moveDest;
 OffsetNumber *chainSrc;
 OffsetNumber *chainDest;
 SpGistState state;
 Buffer buffer;
 Page page;
 int i;

 fillFakeState(&state, xldata->stateSrc);

 ptr += SizeOfSpgxlogVacuumLeaf;
 toDead = (OffsetNumber *) ptr;
 ptr += sizeof(OffsetNumber) * xldata->nDead;
 toPlaceholder = (OffsetNumber *) ptr;
 ptr += sizeof(OffsetNumber) * xldata->nPlaceholder;
 moveSrc = (OffsetNumber *) ptr;
 ptr += sizeof(OffsetNumber) * xldata->nMove;
 moveDest = (OffsetNumber *) ptr;
 ptr += sizeof(OffsetNumber) * xldata->nMove;
 chainSrc = (OffsetNumber *) ptr;
 ptr += sizeof(OffsetNumber) * xldata->nChain;
 chainDest = (OffsetNumber *) ptr;

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  page = BufferGetPage(buffer);

  spgPageIndexMultiDelete(&state, page,
        toDead, xldata->nDead,
        SPGIST_DEAD, SPGIST_DEAD,
        InvalidBlockNumber,
        InvalidOffsetNumber);

  spgPageIndexMultiDelete(&state, page,
        toPlaceholder, xldata->nPlaceholder,
        SPGIST_PLACEHOLDER, SPGIST_PLACEHOLDER,
        InvalidBlockNumber,
        InvalidOffsetNumber);


  for (i = 0; i < xldata->nMove; i++)
  {
   ItemId idSrc = PageGetItemId(page, moveSrc[i]);
   ItemId idDest = PageGetItemId(page, moveDest[i]);
   ItemIdData tmp;

   tmp = *idSrc;
   *idSrc = *idDest;
   *idDest = tmp;
  }

  spgPageIndexMultiDelete(&state, page,
        moveSrc, xldata->nMove,
        SPGIST_PLACEHOLDER, SPGIST_PLACEHOLDER,
        InvalidBlockNumber,
        InvalidOffsetNumber);

  for (i = 0; i < xldata->nChain; i++)
  {
   SpGistLeafTuple lt;

   lt = (SpGistLeafTuple) PageGetItem(page,
              PageGetItemId(page, chainSrc[i]));
   Assert(lt->tupstate == SPGIST_LIVE);
   lt->nextOffset = chainDest[i];
  }

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
