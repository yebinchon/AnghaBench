
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int nMoves; int nodeI; int offnumParent; scalar_t__ storesNulls; scalar_t__ newPage; scalar_t__ replaceDead; int stateSrc; } ;
typedef TYPE_1__ spgxlogMoveLeafs ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_14__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_16__ {int size; } ;
struct TYPE_15__ {scalar_t__ isBuild; } ;
typedef TYPE_3__ SpGistState ;
typedef TYPE_4__ SpGistLeafTupleData ;
typedef scalar_t__ SpGistInnerTuple ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int Item ;
typedef int Buffer ;
typedef int BlockNumber ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 int PageSetLSN (int ,int ) ;
 int SPGIST_LEAF ;
 int SPGIST_NULLS ;
 int SPGIST_PLACEHOLDER ;
 int SPGIST_REDIRECT ;
 int SizeOfSpgxlogMoveLeafs ;
 int SpGistInitBuffer (int ,int) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int,int *,int *,int *) ;
 char* XLogRecGetData (TYPE_2__*) ;
 int addOrReplaceTuple (int ,int ,int ,int ) ;
 int fillFakeState (TYPE_3__*,int ) ;
 int memcpy (TYPE_4__*,char*,int) ;
 int spgPageIndexMultiDelete (TYPE_3__*,int ,int *,int,int ,int ,int ,int ) ;
 int spgUpdateNodeLink (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void
spgRedoMoveLeafs(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 char *ptr = XLogRecGetData(record);
 spgxlogMoveLeafs *xldata = (spgxlogMoveLeafs *) ptr;
 SpGistState state;
 OffsetNumber *toDelete;
 OffsetNumber *toInsert;
 int nInsert;
 Buffer buffer;
 Page page;
 XLogRedoAction action;
 BlockNumber blknoDst;

 XLogRecGetBlockTag(record, 1, ((void*)0), ((void*)0), &blknoDst);

 fillFakeState(&state, xldata->stateSrc);

 nInsert = xldata->replaceDead ? 1 : xldata->nMoves + 1;

 ptr += SizeOfSpgxlogMoveLeafs;
 toDelete = (OffsetNumber *) ptr;
 ptr += sizeof(OffsetNumber) * xldata->nMoves;
 toInsert = (OffsetNumber *) ptr;
 ptr += sizeof(OffsetNumber) * nInsert;
 if (xldata->newPage)
 {
  buffer = XLogInitBufferForRedo(record, 1);
  SpGistInitBuffer(buffer,
       SPGIST_LEAF | (xldata->storesNulls ? SPGIST_NULLS : 0));
  action = BLK_NEEDS_REDO;
 }
 else
  action = XLogReadBufferForRedo(record, 1, &buffer);

 if (action == BLK_NEEDS_REDO)
 {
  int i;

  page = BufferGetPage(buffer);

  for (i = 0; i < nInsert; i++)
  {
   char *leafTuple;
   SpGistLeafTupleData leafTupleHdr;





   leafTuple = ptr;
   memcpy(&leafTupleHdr, leafTuple,
       sizeof(SpGistLeafTupleData));

   addOrReplaceTuple(page, (Item) leafTuple,
         leafTupleHdr.size, toInsert[i]);
   ptr += leafTupleHdr.size;
  }

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);


 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  page = BufferGetPage(buffer);

  spgPageIndexMultiDelete(&state, page, toDelete, xldata->nMoves,
        state.isBuild ? SPGIST_PLACEHOLDER : SPGIST_REDIRECT,
        SPGIST_PLACEHOLDER,
        blknoDst,
        toInsert[nInsert - 1]);

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);


 if (XLogReadBufferForRedo(record, 2, &buffer) == BLK_NEEDS_REDO)
 {
  SpGistInnerTuple tuple;

  page = BufferGetPage(buffer);

  tuple = (SpGistInnerTuple) PageGetItem(page,
              PageGetItemId(page, xldata->offnumParent));

  spgUpdateNodeLink(tuple, xldata->nodeI,
        blknoDst, toInsert[nInsert - 1]);

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
