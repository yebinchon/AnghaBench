
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; int tuple; scalar_t__ isDelete; } ;
typedef TYPE_1__ ginxlogInsertEntry ;
struct TYPE_5__ {int relNode; int dbNode; int spcNode; } ;
typedef TYPE_2__ RelFileNode ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int Item ;
typedef int * IndexTuple ;
typedef int ForkNumber ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 int BufferGetTag (int ,TYPE_2__*,int *,int *) ;
 int ERROR ;
 scalar_t__ FirstOffsetNumber ;
 int GinPageIsLeaf (int ) ;
 int GinSetDownlink (int *,int ) ;
 int IndexTupleSize (int *) ;
 int InvalidBlockNumber ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ PageAddItem (int ,int ,int ,scalar_t__,int,int) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageIndexTupleDelete (int ,scalar_t__) ;
 int elog (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void
ginRedoInsertEntry(Buffer buffer, bool isLeaf, BlockNumber rightblkno, void *rdata)
{
 Page page = BufferGetPage(buffer);
 ginxlogInsertEntry *data = (ginxlogInsertEntry *) rdata;
 OffsetNumber offset = data->offset;
 IndexTuple itup;

 if (rightblkno != InvalidBlockNumber)
 {

  Assert(!GinPageIsLeaf(page));
  Assert(offset >= FirstOffsetNumber && offset <= PageGetMaxOffsetNumber(page));
  itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, offset));
  GinSetDownlink(itup, rightblkno);
 }

 if (data->isDelete)
 {
  Assert(GinPageIsLeaf(page));
  Assert(offset >= FirstOffsetNumber && offset <= PageGetMaxOffsetNumber(page));
  PageIndexTupleDelete(page, offset);
 }

 itup = &data->tuple;

 if (PageAddItem(page, (Item) itup, IndexTupleSize(itup), offset, 0, 0) == InvalidOffsetNumber)
 {
  RelFileNode node;
  ForkNumber forknum;
  BlockNumber blknum;

  BufferGetTag(buffer, &node, &forknum, &blknum);
  elog(ERROR, "failed to add item to index page in %u/%u/%u",
    node.spcNode, node.dbNode, node.relNode);
 }
}
