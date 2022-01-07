
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
struct TYPE_15__ {int nDelete; int nInsert; scalar_t__ isRootSplit; scalar_t__ innerIsParent; int offnumInner; int nodeI; int offnumParent; scalar_t__ storesNulls; scalar_t__ initInner; scalar_t__ initDest; scalar_t__ initSrc; int stateSrc; } ;
typedef TYPE_1__ spgxlogPickSplit ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_16__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_18__ {int size; } ;
struct TYPE_17__ {int isBuild; } ;
typedef TYPE_3__ SpGistState ;
typedef TYPE_4__ SpGistLeafTupleData ;
typedef TYPE_4__ SpGistInnerTupleData ;
typedef scalar_t__ SpGistInnerTuple ;
typedef int * Page ;
typedef int OffsetNumber ;
typedef int Item ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 int * BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int InvalidBlockNumber ;
 int InvalidBuffer ;
 int InvalidOffsetNumber ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetItem (int *,int ) ;
 int PageGetItemId (int *,int ) ;
 int PageSetLSN (int *,int ) ;
 int SPGIST_LEAF ;
 int SPGIST_NULLS ;
 int SPGIST_PLACEHOLDER ;
 int SPGIST_REDIRECT ;
 int SizeOfSpgxlogPickSplit ;
 int SpGistInitBuffer (int ,int) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int,int *,int *,int *) ;
 char* XLogRecGetData (TYPE_2__*) ;
 scalar_t__ XLogRecHasBlockRef (TYPE_2__*,int) ;
 int addOrReplaceTuple (int *,int ,int ,int ) ;
 int fillFakeState (TYPE_3__*,int ) ;
 int memcpy (TYPE_4__*,char*,int) ;
 int spgPageIndexMultiDelete (TYPE_3__*,int *,int *,int,int ,int ,int ,int ) ;
 int spgUpdateNodeLink (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void
spgRedoPickSplit(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 char *ptr = XLogRecGetData(record);
 spgxlogPickSplit *xldata = (spgxlogPickSplit *) ptr;
 char *innerTuple;
 SpGistInnerTupleData innerTupleHdr;
 SpGistState state;
 OffsetNumber *toDelete;
 OffsetNumber *toInsert;
 uint8 *leafPageSelect;
 Buffer srcBuffer;
 Buffer destBuffer;
 Buffer innerBuffer;
 Page srcPage;
 Page destPage;
 Page page;
 int i;
 BlockNumber blknoInner;
 XLogRedoAction action;

 XLogRecGetBlockTag(record, 2, ((void*)0), ((void*)0), &blknoInner);

 fillFakeState(&state, xldata->stateSrc);

 ptr += SizeOfSpgxlogPickSplit;
 toDelete = (OffsetNumber *) ptr;
 ptr += sizeof(OffsetNumber) * xldata->nDelete;
 toInsert = (OffsetNumber *) ptr;
 ptr += sizeof(OffsetNumber) * xldata->nInsert;
 leafPageSelect = (uint8 *) ptr;
 ptr += sizeof(uint8) * xldata->nInsert;

 innerTuple = ptr;

 memcpy(&innerTupleHdr, innerTuple, sizeof(SpGistInnerTupleData));
 ptr += innerTupleHdr.size;



 if (xldata->isRootSplit)
 {

  srcBuffer = InvalidBuffer;
  srcPage = ((void*)0);
 }
 else if (xldata->initSrc)
 {

  srcBuffer = XLogInitBufferForRedo(record, 0);
  srcPage = (Page) BufferGetPage(srcBuffer);

  SpGistInitBuffer(srcBuffer,
       SPGIST_LEAF | (xldata->storesNulls ? SPGIST_NULLS : 0));

 }
 else
 {






  srcPage = ((void*)0);
  if (XLogReadBufferForRedo(record, 0, &srcBuffer) == BLK_NEEDS_REDO)
  {
   srcPage = BufferGetPage(srcBuffer);






   if (!state.isBuild)
    spgPageIndexMultiDelete(&state, srcPage,
          toDelete, xldata->nDelete,
          SPGIST_REDIRECT,
          SPGIST_PLACEHOLDER,
          blknoInner,
          xldata->offnumInner);
   else
    spgPageIndexMultiDelete(&state, srcPage,
          toDelete, xldata->nDelete,
          SPGIST_PLACEHOLDER,
          SPGIST_PLACEHOLDER,
          InvalidBlockNumber,
          InvalidOffsetNumber);


  }
 }


 if (!XLogRecHasBlockRef(record, 1))
 {
  destBuffer = InvalidBuffer;
  destPage = ((void*)0);
 }
 else if (xldata->initDest)
 {

  destBuffer = XLogInitBufferForRedo(record, 1);
  destPage = (Page) BufferGetPage(destBuffer);

  SpGistInitBuffer(destBuffer,
       SPGIST_LEAF | (xldata->storesNulls ? SPGIST_NULLS : 0));

 }
 else
 {




  if (XLogReadBufferForRedo(record, 1, &destBuffer) == BLK_NEEDS_REDO)
   destPage = (Page) BufferGetPage(destBuffer);
  else
   destPage = ((void*)0);
 }


 for (i = 0; i < xldata->nInsert; i++)
 {
  char *leafTuple;
  SpGistLeafTupleData leafTupleHdr;


  leafTuple = ptr;
  memcpy(&leafTupleHdr, leafTuple, sizeof(SpGistLeafTupleData));
  ptr += leafTupleHdr.size;

  page = leafPageSelect[i] ? destPage : srcPage;
  if (page == ((void*)0))
   continue;

  addOrReplaceTuple(page, (Item) leafTuple, leafTupleHdr.size,
        toInsert[i]);
 }


 if (srcPage != ((void*)0))
 {
  PageSetLSN(srcPage, lsn);
  MarkBufferDirty(srcBuffer);
 }
 if (destPage != ((void*)0))
 {
  PageSetLSN(destPage, lsn);
  MarkBufferDirty(destBuffer);
 }


 if (xldata->initInner)
 {
  innerBuffer = XLogInitBufferForRedo(record, 2);
  SpGistInitBuffer(innerBuffer, (xldata->storesNulls ? SPGIST_NULLS : 0));
  action = BLK_NEEDS_REDO;
 }
 else
  action = XLogReadBufferForRedo(record, 2, &innerBuffer);

 if (action == BLK_NEEDS_REDO)
 {
  page = BufferGetPage(innerBuffer);

  addOrReplaceTuple(page, (Item) innerTuple, innerTupleHdr.size,
        xldata->offnumInner);


  if (xldata->innerIsParent)
  {
   SpGistInnerTuple parent;

   parent = (SpGistInnerTuple) PageGetItem(page,
             PageGetItemId(page, xldata->offnumParent));
   spgUpdateNodeLink(parent, xldata->nodeI,
         blknoInner, xldata->offnumInner);
  }

  PageSetLSN(page, lsn);
  MarkBufferDirty(innerBuffer);
 }
 if (BufferIsValid(innerBuffer))
  UnlockReleaseBuffer(innerBuffer);





 if (BufferIsValid(srcBuffer))
  UnlockReleaseBuffer(srcBuffer);
 if (BufferIsValid(destBuffer))
  UnlockReleaseBuffer(destBuffer);


 if (XLogRecHasBlockRef(record, 3))
 {
  Buffer parentBuffer;

  if (XLogReadBufferForRedo(record, 3, &parentBuffer) == BLK_NEEDS_REDO)
  {
   SpGistInnerTuple parent;

   page = BufferGetPage(parentBuffer);

   parent = (SpGistInnerTuple) PageGetItem(page,
             PageGetItemId(page, xldata->offnumParent));
   spgUpdateNodeLink(parent, xldata->nodeI,
         blknoInner, xldata->offnumInner);

   PageSetLSN(page, lsn);
   MarkBufferDirty(parentBuffer);
  }
  if (BufferIsValid(parentBuffer))
   UnlockReleaseBuffer(parentBuffer);
 }
 else
  Assert(xldata->innerIsParent || xldata->isRootSplit);
}
