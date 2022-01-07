
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ offnumLeaf; scalar_t__ offnumHeadLeaf; scalar_t__ offnumParent; int nodeI; scalar_t__ storesNulls; scalar_t__ newPage; } ;
typedef TYPE_1__ spgxlogAddLeaf ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_12__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_14__ {scalar_t__ nextOffset; } ;
struct TYPE_13__ {scalar_t__ nextOffset; int size; } ;
typedef TYPE_3__ SpGistLeafTupleData ;
typedef TYPE_4__* SpGistLeafTuple ;
typedef scalar_t__ SpGistInnerTuple ;
typedef int Page ;
typedef int Item ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int ERROR ;
 scalar_t__ InvalidOffsetNumber ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageAddItem (int ,int ,int ,scalar_t__,int,int) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 int PageIndexTupleDelete (int ,scalar_t__) ;
 int PageSetLSN (int ,int ) ;
 int SPGIST_LEAF ;
 int SPGIST_NULLS ;
 int SpGistInitBuffer (int ,int) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int ,int *,int *,int *) ;
 char* XLogRecGetData (TYPE_2__*) ;
 int addOrReplaceTuple (int ,int ,int ,scalar_t__) ;
 int elog (int ,char*,int ) ;
 int memcpy (TYPE_3__*,char*,int) ;
 int spgUpdateNodeLink (scalar_t__,int ,int ,scalar_t__) ;

__attribute__((used)) static void
spgRedoAddLeaf(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 char *ptr = XLogRecGetData(record);
 spgxlogAddLeaf *xldata = (spgxlogAddLeaf *) ptr;
 char *leafTuple;
 SpGistLeafTupleData leafTupleHdr;
 Buffer buffer;
 Page page;
 XLogRedoAction action;

 ptr += sizeof(spgxlogAddLeaf);
 leafTuple = ptr;

 memcpy(&leafTupleHdr, leafTuple, sizeof(SpGistLeafTupleData));






 if (xldata->newPage)
 {
  buffer = XLogInitBufferForRedo(record, 0);
  SpGistInitBuffer(buffer,
       SPGIST_LEAF | (xldata->storesNulls ? SPGIST_NULLS : 0));
  action = BLK_NEEDS_REDO;
 }
 else
  action = XLogReadBufferForRedo(record, 0, &buffer);

 if (action == BLK_NEEDS_REDO)
 {
  page = BufferGetPage(buffer);


  if (xldata->offnumLeaf != xldata->offnumHeadLeaf)
  {

   addOrReplaceTuple(page, (Item) leafTuple, leafTupleHdr.size,
         xldata->offnumLeaf);


   if (xldata->offnumHeadLeaf != InvalidOffsetNumber)
   {
    SpGistLeafTuple head;

    head = (SpGistLeafTuple) PageGetItem(page,
              PageGetItemId(page, xldata->offnumHeadLeaf));
    Assert(head->nextOffset == leafTupleHdr.nextOffset);
    head->nextOffset = xldata->offnumLeaf;
   }
  }
  else
  {

   PageIndexTupleDelete(page, xldata->offnumLeaf);
   if (PageAddItem(page,
       (Item) leafTuple, leafTupleHdr.size,
       xldata->offnumLeaf, 0, 0) != xldata->offnumLeaf)
    elog(ERROR, "failed to add item of size %u to SPGiST index page",
      leafTupleHdr.size);
  }

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);


 if (xldata->offnumParent != InvalidOffsetNumber)
 {
  if (XLogReadBufferForRedo(record, 1, &buffer) == BLK_NEEDS_REDO)
  {
   SpGistInnerTuple tuple;
   BlockNumber blknoLeaf;

   XLogRecGetBlockTag(record, 0, ((void*)0), ((void*)0), &blknoLeaf);

   page = BufferGetPage(buffer);

   tuple = (SpGistInnerTuple) PageGetItem(page,
               PageGetItemId(page, xldata->offnumParent));

   spgUpdateNodeLink(tuple, xldata->nodeI,
         blknoLeaf, xldata->offnumLeaf);

   PageSetLSN(page, lsn);
   MarkBufferDirty(buffer);
  }
  if (BufferIsValid(buffer))
   UnlockReleaseBuffer(buffer);
 }
}
