
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_16__ ;


typedef int xlrec ;
struct TYPE_20__ {scalar_t__ offnum; int parentBlk; scalar_t__ offnumParent; scalar_t__ offnumNew; int newPage; scalar_t__ nodeI; int stateSrc; } ;
typedef TYPE_1__ spgxlogAddNode ;
typedef int XLogRecPtr ;
struct TYPE_24__ {scalar_t__ offnum; scalar_t__ buffer; scalar_t__ blkno; int page; scalar_t__ node; } ;
struct TYPE_23__ {scalar_t__ size; } ;
struct TYPE_22__ {scalar_t__ size; } ;
struct TYPE_21__ {scalar_t__ isBuild; } ;
struct TYPE_19__ {int nRedirection; int nPlaceholder; } ;
typedef TYPE_2__ SpGistState ;
typedef TYPE_3__* SpGistInnerTuple ;
typedef TYPE_4__* SpGistDeadTuple ;
typedef TYPE_5__ SPPageDesc ;
typedef int Relation ;
typedef int ItemIdData ;
typedef int Item ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ BufferGetBlockNumber (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int GBUF_INNER_PARITY (scalar_t__) ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ InvalidBuffer ;
 void* InvalidOffsetNumber ;
 int MarkBufferDirty (scalar_t__) ;
 scalar_t__ PageAddItem (int ,int ,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ PageGetExactFreeSpace (int ) ;
 int PageIndexTupleDelete (int ,scalar_t__) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_SPGIST_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int SPGIST_PLACEHOLDER ;
 int SPGIST_REDIRECT ;
 int START_CRIT_SECTION () ;
 int STORE_STATE (TYPE_2__*,int ) ;
 scalar_t__ SpGistBlockIsRoot (scalar_t__) ;
 scalar_t__ SpGistGetBuffer (int ,int ,int,int*) ;
 scalar_t__ SpGistPageAddNewItem (TYPE_2__*,int ,int ,int,int *,int) ;
 TYPE_16__* SpGistPageGetOpaque (int ) ;
 int SpGistPageStoresNulls (int ) ;
 int SpGistSetLastUsedPage (int ,scalar_t__) ;
 int UnlockReleaseBuffer (scalar_t__) ;
 int XLOG_SPGIST_ADD_NODE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,scalar_t__,int) ;
 int XLogRegisterData (char*,int) ;
 TYPE_3__* addNode (TYPE_2__*,TYPE_3__*,int ,int) ;
 int elog (int ,char*,...) ;
 int saveNodeLink (int ,TYPE_5__*,scalar_t__,scalar_t__) ;
 TYPE_4__* spgFormDeadTuple (TYPE_2__*,int ,scalar_t__,void*) ;

__attribute__((used)) static void
spgAddNodeAction(Relation index, SpGistState *state,
     SpGistInnerTuple innerTuple,
     SPPageDesc *current, SPPageDesc *parent,
     int nodeN, Datum nodeLabel)
{
 SpGistInnerTuple newInnerTuple;
 spgxlogAddNode xlrec;


 Assert(!SpGistPageStoresNulls(current->page));


 newInnerTuple = addNode(state, innerTuple, nodeLabel, nodeN);


 STORE_STATE(state, xlrec.stateSrc);
 xlrec.offnum = current->offnum;


 xlrec.parentBlk = -1;
 xlrec.offnumParent = InvalidOffsetNumber;
 xlrec.nodeI = 0;


 xlrec.offnumNew = InvalidOffsetNumber;
 xlrec.newPage = 0;

 if (PageGetExactFreeSpace(current->page) >=
  newInnerTuple->size - innerTuple->size)
 {



  START_CRIT_SECTION();

  PageIndexTupleDelete(current->page, current->offnum);
  if (PageAddItem(current->page,
      (Item) newInnerTuple, newInnerTuple->size,
      current->offnum, 0, 0) != current->offnum)
   elog(ERROR, "failed to add item of size %u to SPGiST index page",
     newInnerTuple->size);

  MarkBufferDirty(current->buffer);

  if (RelationNeedsWAL(index) && !state->isBuild)
  {
   XLogRecPtr recptr;

   XLogBeginInsert();
   XLogRegisterData((char *) &xlrec, sizeof(xlrec));
   XLogRegisterData((char *) newInnerTuple, newInnerTuple->size);

   XLogRegisterBuffer(0, current->buffer, REGBUF_STANDARD);

   recptr = XLogInsert(RM_SPGIST_ID, XLOG_SPGIST_ADD_NODE);

   PageSetLSN(current->page, recptr);
  }

  END_CRIT_SECTION();
 }
 else
 {



  SpGistDeadTuple dt;
  SPPageDesc saveCurrent;






  if (SpGistBlockIsRoot(current->blkno))
   elog(ERROR, "cannot enlarge root tuple any more");
  Assert(parent->buffer != InvalidBuffer);

  saveCurrent = *current;

  xlrec.offnumParent = parent->offnum;
  xlrec.nodeI = parent->node;





  current->buffer = SpGistGetBuffer(index,
            GBUF_INNER_PARITY(current->blkno),
            newInnerTuple->size + sizeof(ItemIdData),
            &xlrec.newPage);
  current->blkno = BufferGetBlockNumber(current->buffer);
  current->page = BufferGetPage(current->buffer);
  if (current->blkno == saveCurrent.blkno)
   elog(ERROR, "SPGiST new buffer shouldn't be same as old buffer");





  if (parent->buffer == saveCurrent.buffer)
   xlrec.parentBlk = 0;
  else if (parent->buffer == current->buffer)
   xlrec.parentBlk = 1;
  else
   xlrec.parentBlk = 2;

  START_CRIT_SECTION();


  xlrec.offnumNew = current->offnum =
   SpGistPageAddNewItem(state, current->page,
         (Item) newInnerTuple, newInnerTuple->size,
         ((void*)0), 0);

  MarkBufferDirty(current->buffer);


  saveNodeLink(index, parent, current->blkno, current->offnum);
  if (state->isBuild)
   dt = spgFormDeadTuple(state, SPGIST_PLACEHOLDER,
          InvalidBlockNumber, InvalidOffsetNumber);
  else
   dt = spgFormDeadTuple(state, SPGIST_REDIRECT,
          current->blkno, current->offnum);

  PageIndexTupleDelete(saveCurrent.page, saveCurrent.offnum);
  if (PageAddItem(saveCurrent.page, (Item) dt, dt->size,
      saveCurrent.offnum,
      0, 0) != saveCurrent.offnum)
   elog(ERROR, "failed to add item of size %u to SPGiST index page",
     dt->size);

  if (state->isBuild)
   SpGistPageGetOpaque(saveCurrent.page)->nPlaceholder++;
  else
   SpGistPageGetOpaque(saveCurrent.page)->nRedirection++;

  MarkBufferDirty(saveCurrent.buffer);

  if (RelationNeedsWAL(index) && !state->isBuild)
  {
   XLogRecPtr recptr;
   int flags;

   XLogBeginInsert();


   XLogRegisterBuffer(0, saveCurrent.buffer, REGBUF_STANDARD);

   flags = REGBUF_STANDARD;
   if (xlrec.newPage)
    flags |= REGBUF_WILL_INIT;
   XLogRegisterBuffer(1, current->buffer, flags);

   if (xlrec.parentBlk == 2)
    XLogRegisterBuffer(2, parent->buffer, REGBUF_STANDARD);

   XLogRegisterData((char *) &xlrec, sizeof(xlrec));
   XLogRegisterData((char *) newInnerTuple, newInnerTuple->size);

   recptr = XLogInsert(RM_SPGIST_ID, XLOG_SPGIST_ADD_NODE);


   PageSetLSN(current->page, recptr);
   PageSetLSN(parent->page, recptr);
   PageSetLSN(saveCurrent.page, recptr);
  }

  END_CRIT_SECTION();


  if (saveCurrent.buffer != current->buffer &&
   saveCurrent.buffer != parent->buffer)
  {
   SpGistSetLastUsedPage(index, saveCurrent.buffer);
   UnlockReleaseBuffer(saveCurrent.buffer);
  }
 }
}
