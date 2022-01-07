
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ offnumPrefix; int offnumPostfix; scalar_t__ postfixBlkSame; scalar_t__ newPage; } ;
typedef TYPE_1__ spgxlogSplitTuple ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_10__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_11__ {int size; } ;
typedef TYPE_3__ SpGistInnerTupleData ;
typedef int Page ;
typedef int Item ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int ERROR ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageAddItem (int ,int ,int ,scalar_t__,int,int) ;
 int PageIndexTupleDelete (int ,scalar_t__) ;
 int PageSetLSN (int ,int ) ;
 int SpGistInitBuffer (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 char* XLogRecGetData (TYPE_2__*) ;
 int addOrReplaceTuple (int ,int ,int ,int ) ;
 int elog (int ,char*,int ) ;
 int memcpy (TYPE_3__*,char*,int) ;

__attribute__((used)) static void
spgRedoSplitTuple(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 char *ptr = XLogRecGetData(record);
 spgxlogSplitTuple *xldata = (spgxlogSplitTuple *) ptr;
 char *prefixTuple;
 SpGistInnerTupleData prefixTupleHdr;
 char *postfixTuple;
 SpGistInnerTupleData postfixTupleHdr;
 Buffer buffer;
 Page page;
 XLogRedoAction action;

 ptr += sizeof(spgxlogSplitTuple);
 prefixTuple = ptr;

 memcpy(&prefixTupleHdr, prefixTuple, sizeof(SpGistInnerTupleData));
 ptr += prefixTupleHdr.size;
 postfixTuple = ptr;

 memcpy(&postfixTupleHdr, postfixTuple, sizeof(SpGistInnerTupleData));
 if (!xldata->postfixBlkSame)
 {
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

   addOrReplaceTuple(page, (Item) postfixTuple,
         postfixTupleHdr.size, xldata->offnumPostfix);

   PageSetLSN(page, lsn);
   MarkBufferDirty(buffer);
  }
  if (BufferIsValid(buffer))
   UnlockReleaseBuffer(buffer);
 }


 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  page = BufferGetPage(buffer);

  PageIndexTupleDelete(page, xldata->offnumPrefix);
  if (PageAddItem(page, (Item) prefixTuple, prefixTupleHdr.size,
      xldata->offnumPrefix, 0, 0) != xldata->offnumPrefix)
   elog(ERROR, "failed to add item of size %u to SPGiST index page",
     prefixTupleHdr.size);

  if (xldata->postfixBlkSame)
   addOrReplaceTuple(page, (Item) postfixTuple,
         postfixTupleHdr.size,
         xldata->offnumPostfix);

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
