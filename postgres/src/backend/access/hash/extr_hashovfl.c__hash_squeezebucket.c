
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ntups; int is_prim_bucket_same_wrt; } ;
typedef TYPE_1__ xl_hash_move_page_contents ;
typedef int uint16 ;
typedef int XLogRecPtr ;
struct TYPE_4__ {scalar_t__ hasho_nextblkno; scalar_t__ hasho_bucket; scalar_t__ hasho_prevblkno; } ;
typedef scalar_t__ Size ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_2__* HashPageOpaque ;
typedef int BufferAccessStrategy ;
typedef scalar_t__ Buffer ;
typedef scalar_t__ Bucket ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_UNLOCK ;
 int BlockNumberIsValid (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 scalar_t__ CopyIndexTuple (scalar_t__) ;
 int END_CRIT_SECTION () ;
 scalar_t__ FirstOffsetNumber ;
 int HASH_WRITE ;
 scalar_t__ IndexTupleSize (scalar_t__) ;
 scalar_t__ InvalidBuffer ;
 scalar_t__ ItemIdIsDead (int ) ;
 int LH_OVERFLOW_PAGE ;
 int LockBuffer (scalar_t__,int ) ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 int MarkBufferDirty (scalar_t__) ;
 int MaxIndexTuplesPerPage ;
 int MaxOffsetNumber ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ PageGetFreeSpaceForMultipleTuples (int ,int) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PageIndexMultiDelete (int ,scalar_t__*,int) ;
 int PageIsEmpty (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_NO_IMAGE ;
 int REGBUF_STANDARD ;
 int RM_HASH_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfHashMovePageContents ;
 int XLOG_HASH_MOVE_PAGE_CONTENTS ;
 int XLogBeginInsert () ;
 int XLogEnsureRecordSpace (int ,int ) ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int,char*,int) ;
 int XLogRegisterBuffer (int,scalar_t__,int) ;
 int XLogRegisterData (char*,int ) ;
 int _hash_freeovflpage (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,int,int ) ;
 scalar_t__ _hash_getbuf_with_strategy (int ,scalar_t__,int ,int ,int ) ;
 int _hash_pgaddmultitup (int ,scalar_t__,scalar_t__*,scalar_t__*,int) ;
 int _hash_relbuf (int ,scalar_t__) ;
 int pfree (scalar_t__) ;

void
_hash_squeezebucket(Relation rel,
     Bucket bucket,
     BlockNumber bucket_blkno,
     Buffer bucket_buf,
     BufferAccessStrategy bstrategy)
{
 BlockNumber wblkno;
 BlockNumber rblkno;
 Buffer wbuf;
 Buffer rbuf;
 Page wpage;
 Page rpage;
 HashPageOpaque wopaque;
 HashPageOpaque ropaque;




 wblkno = bucket_blkno;
 wbuf = bucket_buf;
 wpage = BufferGetPage(wbuf);
 wopaque = (HashPageOpaque) PageGetSpecialPointer(wpage);





 if (!BlockNumberIsValid(wopaque->hasho_nextblkno))
 {
  LockBuffer(wbuf, BUFFER_LOCK_UNLOCK);
  return;
 }







 rbuf = InvalidBuffer;
 ropaque = wopaque;
 do
 {
  rblkno = ropaque->hasho_nextblkno;
  if (rbuf != InvalidBuffer)
   _hash_relbuf(rel, rbuf);
  rbuf = _hash_getbuf_with_strategy(rel,
            rblkno,
            HASH_WRITE,
            LH_OVERFLOW_PAGE,
            bstrategy);
  rpage = BufferGetPage(rbuf);
  ropaque = (HashPageOpaque) PageGetSpecialPointer(rpage);
  Assert(ropaque->hasho_bucket == bucket);
 } while (BlockNumberIsValid(ropaque->hasho_nextblkno));




 for (;;)
 {
  OffsetNumber roffnum;
  OffsetNumber maxroffnum;
  OffsetNumber deletable[MaxOffsetNumber];
  IndexTuple itups[MaxIndexTuplesPerPage];
  Size tups_size[MaxIndexTuplesPerPage];
  OffsetNumber itup_offsets[MaxIndexTuplesPerPage];
  uint16 ndeletable = 0;
  uint16 nitups = 0;
  Size all_tups_size = 0;
  int i;
  bool retain_pin = 0;

readpage:

  maxroffnum = PageGetMaxOffsetNumber(rpage);
  for (roffnum = FirstOffsetNumber;
    roffnum <= maxroffnum;
    roffnum = OffsetNumberNext(roffnum))
  {
   IndexTuple itup;
   Size itemsz;


   if (ItemIdIsDead(PageGetItemId(rpage, roffnum)))
    continue;

   itup = (IndexTuple) PageGetItem(rpage,
           PageGetItemId(rpage, roffnum));
   itemsz = IndexTupleSize(itup);
   itemsz = MAXALIGN(itemsz);






   while (PageGetFreeSpaceForMultipleTuples(wpage, nitups + 1) < (all_tups_size + itemsz))
   {
    Buffer next_wbuf = InvalidBuffer;
    bool tups_moved = 0;

    Assert(!PageIsEmpty(wpage));

    if (wblkno == bucket_blkno)
     retain_pin = 1;

    wblkno = wopaque->hasho_nextblkno;
    Assert(BlockNumberIsValid(wblkno));


    if (wblkno != rblkno)
     next_wbuf = _hash_getbuf_with_strategy(rel,
                 wblkno,
                 HASH_WRITE,
                 LH_OVERFLOW_PAGE,
                 bstrategy);

    if (nitups > 0)
    {
     Assert(nitups == ndeletable);





     if (RelationNeedsWAL(rel))
      XLogEnsureRecordSpace(0, 3 + nitups);

     START_CRIT_SECTION();







     _hash_pgaddmultitup(rel, wbuf, itups, itup_offsets, nitups);
     MarkBufferDirty(wbuf);


     PageIndexMultiDelete(rpage, deletable, ndeletable);
     MarkBufferDirty(rbuf);


     if (RelationNeedsWAL(rel))
     {
      XLogRecPtr recptr;
      xl_hash_move_page_contents xlrec;

      xlrec.ntups = nitups;
      xlrec.is_prim_bucket_same_wrt = (wbuf == bucket_buf) ? 1 : 0;

      XLogBeginInsert();
      XLogRegisterData((char *) &xlrec, SizeOfHashMovePageContents);





      if (!xlrec.is_prim_bucket_same_wrt)
       XLogRegisterBuffer(0, bucket_buf, REGBUF_STANDARD | REGBUF_NO_IMAGE);

      XLogRegisterBuffer(1, wbuf, REGBUF_STANDARD);
      XLogRegisterBufData(1, (char *) itup_offsets,
           nitups * sizeof(OffsetNumber));
      for (i = 0; i < nitups; i++)
       XLogRegisterBufData(1, (char *) itups[i], tups_size[i]);

      XLogRegisterBuffer(2, rbuf, REGBUF_STANDARD);
      XLogRegisterBufData(2, (char *) deletable,
           ndeletable * sizeof(OffsetNumber));

      recptr = XLogInsert(RM_HASH_ID, XLOG_HASH_MOVE_PAGE_CONTENTS);

      PageSetLSN(BufferGetPage(wbuf), recptr);
      PageSetLSN(BufferGetPage(rbuf), recptr);
     }

     END_CRIT_SECTION();

     tups_moved = 1;
    }





    if (retain_pin)
     LockBuffer(wbuf, BUFFER_LOCK_UNLOCK);
    else
     _hash_relbuf(rel, wbuf);


    if (rblkno == wblkno)
    {
     _hash_relbuf(rel, rbuf);
     return;
    }

    wbuf = next_wbuf;
    wpage = BufferGetPage(wbuf);
    wopaque = (HashPageOpaque) PageGetSpecialPointer(wpage);
    Assert(wopaque->hasho_bucket == bucket);
    retain_pin = 0;


    for (i = 0; i < nitups; i++)
     pfree(itups[i]);
    nitups = 0;
    all_tups_size = 0;
    ndeletable = 0;





    if (tups_moved)
     goto readpage;
   }


   deletable[ndeletable++] = roffnum;






   itups[nitups] = CopyIndexTuple(itup);
   tups_size[nitups++] = itemsz;
   all_tups_size += itemsz;
  }
  rblkno = ropaque->hasho_prevblkno;
  Assert(BlockNumberIsValid(rblkno));


  _hash_freeovflpage(rel, bucket_buf, rbuf, wbuf, itups, itup_offsets,
         tups_size, nitups, bstrategy);


  for (i = 0; i < nitups; i++)
   pfree(itups[i]);


  if (rblkno == wblkno)
  {

   if (wblkno == bucket_blkno)
    LockBuffer(wbuf, BUFFER_LOCK_UNLOCK);
   else
    _hash_relbuf(rel, wbuf);
   return;
  }

  rbuf = _hash_getbuf_with_strategy(rel,
            rblkno,
            HASH_WRITE,
            LH_OVERFLOW_PAGE,
            bstrategy);
  rpage = BufferGetPage(rbuf);
  ropaque = (HashPageOpaque) PageGetSpecialPointer(rpage);
  Assert(ropaque->hasho_bucket == bucket);
 }


}
