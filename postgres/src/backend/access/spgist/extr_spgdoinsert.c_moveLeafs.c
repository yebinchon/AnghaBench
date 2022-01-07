
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int nMoves; int replaceDead; int storesNulls; int offnumParent; scalar_t__ newPage; int nodeI; int stateSrc; } ;
typedef TYPE_1__ spgxlogMoveLeafs ;
typedef int XLogRecPtr ;
struct TYPE_17__ {scalar_t__ buffer; int offnum; scalar_t__ blkno; int page; int node; } ;
struct TYPE_16__ {int size; scalar_t__ tupstate; int nextOffset; } ;
struct TYPE_15__ {scalar_t__ isBuild; } ;
typedef TYPE_2__ SpGistState ;
typedef TYPE_3__* SpGistLeafTuple ;
typedef TYPE_4__ SPPageDesc ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemIdData ;
typedef int Item ;
typedef scalar_t__ Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BufferGetBlockNumber (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int FirstOffsetNumber ;
 int GBUF_LEAF ;
 int GBUF_NULLS ;
 scalar_t__ InvalidBuffer ;
 int InvalidOffsetNumber ;
 int MarkBufferDirty (scalar_t__) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int) ;
 int PageGetMaxOffsetNumber (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_SPGIST_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 scalar_t__ SPGIST_DEAD ;
 scalar_t__ SPGIST_LIVE ;
 int SPGIST_PLACEHOLDER ;
 int SPGIST_REDIRECT ;
 int START_CRIT_SECTION () ;
 int STORE_STATE (TYPE_2__*,int ) ;
 int SizeOfSpgxlogMoveLeafs ;
 scalar_t__ SpGistGetBuffer (int ,int,int,scalar_t__*) ;
 int SpGistPageAddNewItem (TYPE_2__*,int ,int ,int,int*,int) ;
 int SpGistSetLastUsedPage (int ,scalar_t__) ;
 int UnlockReleaseBuffer (scalar_t__) ;
 int XLOG_SPGIST_MOVE_LEAFS ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,scalar_t__,int) ;
 int XLogRegisterData (char*,int) ;
 int elog (int ,char*,scalar_t__) ;
 int memcpy (char*,TYPE_3__*,int) ;
 char* palloc (int) ;
 int saveNodeLink (int ,TYPE_4__*,scalar_t__,int) ;
 int spgPageIndexMultiDelete (TYPE_2__*,int ,int*,int,int ,int ,scalar_t__,int) ;

__attribute__((used)) static void
moveLeafs(Relation index, SpGistState *state,
    SPPageDesc *current, SPPageDesc *parent,
    SpGistLeafTuple newLeafTuple, bool isNulls)
{
 int i,
    nDelete,
    nInsert,
    size;
 Buffer nbuf;
 Page npage;
 SpGistLeafTuple it;
 OffsetNumber r = InvalidOffsetNumber,
    startOffset = InvalidOffsetNumber;
 bool replaceDead = 0;
 OffsetNumber *toDelete;
 OffsetNumber *toInsert;
 BlockNumber nblkno;
 spgxlogMoveLeafs xlrec;
 char *leafdata,
      *leafptr;


 Assert(parent->buffer != InvalidBuffer);
 Assert(parent->buffer != current->buffer);


 i = PageGetMaxOffsetNumber(current->page);
 toDelete = (OffsetNumber *) palloc(sizeof(OffsetNumber) * i);
 toInsert = (OffsetNumber *) palloc(sizeof(OffsetNumber) * (i + 1));

 size = newLeafTuple->size + sizeof(ItemIdData);

 nDelete = 0;
 i = current->offnum;
 while (i != InvalidOffsetNumber)
 {
  SpGistLeafTuple it;

  Assert(i >= FirstOffsetNumber &&
      i <= PageGetMaxOffsetNumber(current->page));
  it = (SpGistLeafTuple) PageGetItem(current->page,
             PageGetItemId(current->page, i));

  if (it->tupstate == SPGIST_LIVE)
  {
   toDelete[nDelete] = i;
   size += it->size + sizeof(ItemIdData);
   nDelete++;
  }
  else if (it->tupstate == SPGIST_DEAD)
  {

   Assert(i == current->offnum);
   Assert(it->nextOffset == InvalidOffsetNumber);

   toDelete[nDelete] = i;
   nDelete++;
   replaceDead = 1;
  }
  else
   elog(ERROR, "unexpected SPGiST tuple state: %d", it->tupstate);

  i = it->nextOffset;
 }


 nbuf = SpGistGetBuffer(index, GBUF_LEAF | (isNulls ? GBUF_NULLS : 0),
         size, &xlrec.newPage);
 npage = BufferGetPage(nbuf);
 nblkno = BufferGetBlockNumber(nbuf);
 Assert(nblkno != current->blkno);

 leafdata = leafptr = palloc(size);

 START_CRIT_SECTION();


 nInsert = 0;
 if (!replaceDead)
 {
  for (i = 0; i < nDelete; i++)
  {
   it = (SpGistLeafTuple) PageGetItem(current->page,
              PageGetItemId(current->page, toDelete[i]));
   Assert(it->tupstate == SPGIST_LIVE);






   it->nextOffset = r;

   r = SpGistPageAddNewItem(state, npage, (Item) it, it->size,
          &startOffset, 0);

   toInsert[nInsert] = r;
   nInsert++;


   memcpy(leafptr, it, it->size);
   leafptr += it->size;
  }
 }


 newLeafTuple->nextOffset = r;
 r = SpGistPageAddNewItem(state, npage,
        (Item) newLeafTuple, newLeafTuple->size,
        &startOffset, 0);
 toInsert[nInsert] = r;
 nInsert++;
 memcpy(leafptr, newLeafTuple, newLeafTuple->size);
 leafptr += newLeafTuple->size;






 spgPageIndexMultiDelete(state, current->page, toDelete, nDelete,
       state->isBuild ? SPGIST_PLACEHOLDER : SPGIST_REDIRECT,
       SPGIST_PLACEHOLDER,
       nblkno, r);


 saveNodeLink(index, parent, nblkno, r);


 MarkBufferDirty(current->buffer);
 MarkBufferDirty(nbuf);

 if (RelationNeedsWAL(index) && !state->isBuild)
 {
  XLogRecPtr recptr;


  STORE_STATE(state, xlrec.stateSrc);

  xlrec.nMoves = nDelete;
  xlrec.replaceDead = replaceDead;
  xlrec.storesNulls = isNulls;

  xlrec.offnumParent = parent->offnum;
  xlrec.nodeI = parent->node;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfSpgxlogMoveLeafs);
  XLogRegisterData((char *) toDelete,
       sizeof(OffsetNumber) * nDelete);
  XLogRegisterData((char *) toInsert,
       sizeof(OffsetNumber) * nInsert);
  XLogRegisterData((char *) leafdata, leafptr - leafdata);

  XLogRegisterBuffer(0, current->buffer, REGBUF_STANDARD);
  XLogRegisterBuffer(1, nbuf, REGBUF_STANDARD | (xlrec.newPage ? REGBUF_WILL_INIT : 0));
  XLogRegisterBuffer(2, parent->buffer, REGBUF_STANDARD);

  recptr = XLogInsert(RM_SPGIST_ID, XLOG_SPGIST_MOVE_LEAFS);

  PageSetLSN(current->page, recptr);
  PageSetLSN(npage, recptr);
  PageSetLSN(parent->page, recptr);
 }

 END_CRIT_SECTION();


 SpGistSetLastUsedPage(index, nbuf);
 UnlockReleaseBuffer(nbuf);
}
