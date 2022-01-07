
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int xlrec ;
struct TYPE_11__ {int newPage; int storesNulls; scalar_t__ offnumLeaf; scalar_t__ offnumHeadLeaf; scalar_t__ offnumParent; scalar_t__ nodeI; } ;
typedef TYPE_1__ spgxlogAddLeaf ;
typedef int XLogRecPtr ;
struct TYPE_14__ {scalar_t__ offnum; scalar_t__ buffer; int page; int blkno; scalar_t__ node; } ;
struct TYPE_13__ {int size; scalar_t__ tupstate; void* nextOffset; } ;
struct TYPE_12__ {int isBuild; } ;
typedef TYPE_2__ SpGistState ;
typedef TYPE_3__* SpGistLeafTuple ;
typedef TYPE_4__ SPPageDesc ;
typedef int Relation ;
typedef void* OffsetNumber ;
typedef int Item ;


 int END_CRIT_SECTION () ;
 int ERROR ;
 scalar_t__ InvalidBuffer ;
 scalar_t__ InvalidOffsetNumber ;
 int MarkBufferDirty (scalar_t__) ;
 scalar_t__ PageAddItem (int ,int ,int,scalar_t__,int,int) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 int PageIndexTupleDelete (int ,scalar_t__) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_SPGIST_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 scalar_t__ SPGIST_DEAD ;
 scalar_t__ SPGIST_LIVE ;
 int START_CRIT_SECTION () ;
 scalar_t__ SpGistBlockIsRoot (int ) ;
 void* SpGistPageAddNewItem (TYPE_2__*,int ,int ,int,int *,int) ;
 int XLOG_SPGIST_ADD_LEAF ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,scalar_t__,int) ;
 int XLogRegisterData (char*,int) ;
 int elog (int ,char*,int) ;
 int saveNodeLink (int ,TYPE_4__*,int ,scalar_t__) ;

__attribute__((used)) static void
addLeafTuple(Relation index, SpGistState *state, SpGistLeafTuple leafTuple,
    SPPageDesc *current, SPPageDesc *parent, bool isNulls, bool isNew)
{
 spgxlogAddLeaf xlrec;

 xlrec.newPage = isNew;
 xlrec.storesNulls = isNulls;


 xlrec.offnumLeaf = InvalidOffsetNumber;
 xlrec.offnumHeadLeaf = InvalidOffsetNumber;
 xlrec.offnumParent = InvalidOffsetNumber;
 xlrec.nodeI = 0;

 START_CRIT_SECTION();

 if (current->offnum == InvalidOffsetNumber ||
  SpGistBlockIsRoot(current->blkno))
 {

  leafTuple->nextOffset = InvalidOffsetNumber;
  current->offnum = SpGistPageAddNewItem(state, current->page,
              (Item) leafTuple, leafTuple->size,
              ((void*)0), 0);

  xlrec.offnumLeaf = current->offnum;


  if (parent->buffer != InvalidBuffer)
  {
   xlrec.offnumParent = parent->offnum;
   xlrec.nodeI = parent->node;

   saveNodeLink(index, parent, current->blkno, current->offnum);
  }
 }
 else
 {
  SpGistLeafTuple head;
  OffsetNumber offnum;

  head = (SpGistLeafTuple) PageGetItem(current->page,
            PageGetItemId(current->page, current->offnum));
  if (head->tupstate == SPGIST_LIVE)
  {
   leafTuple->nextOffset = head->nextOffset;
   offnum = SpGistPageAddNewItem(state, current->page,
            (Item) leafTuple, leafTuple->size,
            ((void*)0), 0);





   head = (SpGistLeafTuple) PageGetItem(current->page,
             PageGetItemId(current->page, current->offnum));
   head->nextOffset = offnum;

   xlrec.offnumLeaf = offnum;
   xlrec.offnumHeadLeaf = current->offnum;
  }
  else if (head->tupstate == SPGIST_DEAD)
  {
   leafTuple->nextOffset = InvalidOffsetNumber;
   PageIndexTupleDelete(current->page, current->offnum);
   if (PageAddItem(current->page,
       (Item) leafTuple, leafTuple->size,
       current->offnum, 0, 0) != current->offnum)
    elog(ERROR, "failed to add item of size %u to SPGiST index page",
      leafTuple->size);


   xlrec.offnumLeaf = current->offnum;
   xlrec.offnumHeadLeaf = current->offnum;
  }
  else
   elog(ERROR, "unexpected SPGiST tuple state: %d", head->tupstate);
 }

 MarkBufferDirty(current->buffer);

 if (RelationNeedsWAL(index) && !state->isBuild)
 {
  XLogRecPtr recptr;
  int flags;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, sizeof(xlrec));
  XLogRegisterData((char *) leafTuple, leafTuple->size);

  flags = REGBUF_STANDARD;
  if (xlrec.newPage)
   flags |= REGBUF_WILL_INIT;
  XLogRegisterBuffer(0, current->buffer, flags);
  if (xlrec.offnumParent != InvalidOffsetNumber)
   XLogRegisterBuffer(1, parent->buffer, REGBUF_STANDARD);

  recptr = XLogInsert(RM_SPGIST_ID, XLOG_SPGIST_ADD_LEAF);

  PageSetLSN(current->page, recptr);


  if (xlrec.offnumParent != InvalidOffsetNumber)
  {
   PageSetLSN(parent->page, recptr);
  }
 }

 END_CRIT_SECTION();
}
