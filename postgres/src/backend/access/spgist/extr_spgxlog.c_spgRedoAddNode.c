
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


struct TYPE_18__ {int parentBlk; scalar_t__ offnum; int offnumNew; int nodeI; int offnumParent; scalar_t__ newPage; int stateSrc; } ;
typedef TYPE_1__ spgxlogAddNode ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_19__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_22__ {int size; } ;
struct TYPE_21__ {int size; } ;
struct TYPE_20__ {scalar_t__ isBuild; } ;
struct TYPE_17__ {int nRedirection; int nPlaceholder; } ;
typedef TYPE_3__ SpGistState ;
typedef TYPE_4__ SpGistInnerTupleData ;
typedef scalar_t__ SpGistInnerTuple ;
typedef TYPE_5__* SpGistDeadTuple ;
typedef int Page ;
typedef int Item ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int ERROR ;
 int InvalidBlockNumber ;
 int InvalidOffsetNumber ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageAddItem (int ,int ,int ,scalar_t__,int,int) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 int PageIndexTupleDelete (int ,scalar_t__) ;
 int PageSetLSN (int ,int ) ;
 int SPGIST_PLACEHOLDER ;
 int SPGIST_REDIRECT ;
 int SpGistInitBuffer (int ,int ) ;
 TYPE_16__* SpGistPageGetOpaque (int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int,int *,int *,int *) ;
 char* XLogRecGetData (TYPE_2__*) ;
 int XLogRecHasBlockRef (TYPE_2__*,int) ;
 int addOrReplaceTuple (int ,int ,int ,int ) ;
 int elog (int ,char*,int ) ;
 int fillFakeState (TYPE_3__*,int ) ;
 int memcpy (TYPE_4__*,char*,int) ;
 TYPE_5__* spgFormDeadTuple (TYPE_3__*,int ,int ,int ) ;
 int spgUpdateNodeLink (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void
spgRedoAddNode(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 char *ptr = XLogRecGetData(record);
 spgxlogAddNode *xldata = (spgxlogAddNode *) ptr;
 char *innerTuple;
 SpGistInnerTupleData innerTupleHdr;
 SpGistState state;
 Buffer buffer;
 Page page;
 XLogRedoAction action;

 ptr += sizeof(spgxlogAddNode);
 innerTuple = ptr;

 memcpy(&innerTupleHdr, innerTuple, sizeof(SpGistInnerTupleData));

 fillFakeState(&state, xldata->stateSrc);

 if (!XLogRecHasBlockRef(record, 1))
 {

  Assert(xldata->parentBlk == -1);
  if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
  {
   page = BufferGetPage(buffer);

   PageIndexTupleDelete(page, xldata->offnum);
   if (PageAddItem(page, (Item) innerTuple, innerTupleHdr.size,
       xldata->offnum,
       0, 0) != xldata->offnum)
    elog(ERROR, "failed to add item of size %u to SPGiST index page",
      innerTupleHdr.size);

   PageSetLSN(page, lsn);
   MarkBufferDirty(buffer);
  }
  if (BufferIsValid(buffer))
   UnlockReleaseBuffer(buffer);
 }
 else
 {
  BlockNumber blkno;
  BlockNumber blknoNew;

  XLogRecGetBlockTag(record, 0, ((void*)0), ((void*)0), &blkno);
  XLogRecGetBlockTag(record, 1, ((void*)0), ((void*)0), &blknoNew);
  if (xldata->newPage)
  {

   buffer = XLogInitBufferForRedo(record, 1);
   SpGistInitBuffer(buffer, 0);
   action = BLK_NEEDS_REDO;
  }
  else
   action = XLogReadBufferForRedo(record, 1, &buffer);
  if (action == BLK_NEEDS_REDO)
  {
   page = BufferGetPage(buffer);

   addOrReplaceTuple(page, (Item) innerTuple,
         innerTupleHdr.size, xldata->offnumNew);




   if (xldata->parentBlk == 1)
   {
    SpGistInnerTuple parentTuple;

    parentTuple = (SpGistInnerTuple) PageGetItem(page,
                PageGetItemId(page, xldata->offnumParent));

    spgUpdateNodeLink(parentTuple, xldata->nodeI,
          blknoNew, xldata->offnumNew);
   }
   PageSetLSN(page, lsn);
   MarkBufferDirty(buffer);
  }
  if (BufferIsValid(buffer))
   UnlockReleaseBuffer(buffer);


  if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
  {
   SpGistDeadTuple dt;

   page = BufferGetPage(buffer);

   if (state.isBuild)
    dt = spgFormDeadTuple(&state, SPGIST_PLACEHOLDER,
           InvalidBlockNumber,
           InvalidOffsetNumber);
   else
    dt = spgFormDeadTuple(&state, SPGIST_REDIRECT,
           blknoNew,
           xldata->offnumNew);

   PageIndexTupleDelete(page, xldata->offnum);
   if (PageAddItem(page, (Item) dt, dt->size,
       xldata->offnum,
       0, 0) != xldata->offnum)
    elog(ERROR, "failed to add item of size %u to SPGiST index page",
      dt->size);

   if (state.isBuild)
    SpGistPageGetOpaque(page)->nPlaceholder++;
   else
    SpGistPageGetOpaque(page)->nRedirection++;




   if (xldata->parentBlk == 0)
   {
    SpGistInnerTuple parentTuple;

    parentTuple = (SpGistInnerTuple) PageGetItem(page,
                PageGetItemId(page, xldata->offnumParent));

    spgUpdateNodeLink(parentTuple, xldata->nodeI,
          blknoNew, xldata->offnumNew);
   }
   PageSetLSN(page, lsn);
   MarkBufferDirty(buffer);
  }
  if (BufferIsValid(buffer))
   UnlockReleaseBuffer(buffer);





  if (xldata->parentBlk == 2)
  {
   if (XLogReadBufferForRedo(record, 2, &buffer) == BLK_NEEDS_REDO)
   {
    SpGistInnerTuple parentTuple;

    page = BufferGetPage(buffer);

    parentTuple = (SpGistInnerTuple) PageGetItem(page,
                PageGetItemId(page, xldata->offnumParent));

    spgUpdateNodeLink(parentTuple, xldata->nodeI,
          blknoNew, xldata->offnumNew);

    PageSetLSN(page, lsn);
    MarkBufferDirty(buffer);
   }
   if (BufferIsValid(buffer))
    UnlockReleaseBuffer(buffer);
  }
 }
}
