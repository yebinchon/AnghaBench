
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ btpo_next; } ;
struct TYPE_8__ {scalar_t__ bts_blkno; scalar_t__ bts_offset; int bts_parent; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_1__* BTStack ;
typedef TYPE_2__* BTPageOpaque ;


 int BT_WRITE ;
 scalar_t__ BTreeInnerTupleGetDownLink (scalar_t__) ;
 int BufferGetPage (int ) ;
 int InvalidBuffer ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ OffsetNumberPrev (scalar_t__) ;
 scalar_t__ P_FIRSTDATAKEY (TYPE_2__*) ;
 int P_IGNORE (TYPE_2__*) ;
 scalar_t__ P_INCOMPLETE_SPLIT (TYPE_2__*) ;
 scalar_t__ P_RIGHTMOST (TYPE_2__*) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int _bt_finish_split (int ,int ,int ) ;
 int _bt_getbuf (int ,scalar_t__,int ) ;
 int _bt_relbuf (int ,int ) ;

Buffer
_bt_getstackbuf(Relation rel, BTStack stack, BlockNumber child)
{
 BlockNumber blkno;
 OffsetNumber start;

 blkno = stack->bts_blkno;
 start = stack->bts_offset;

 for (;;)
 {
  Buffer buf;
  Page page;
  BTPageOpaque opaque;

  buf = _bt_getbuf(rel, blkno, BT_WRITE);
  page = BufferGetPage(buf);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);

  if (P_INCOMPLETE_SPLIT(opaque))
  {
   _bt_finish_split(rel, buf, stack->bts_parent);
   continue;
  }

  if (!P_IGNORE(opaque))
  {
   OffsetNumber offnum,
      minoff,
      maxoff;
   ItemId itemid;
   IndexTuple item;

   minoff = P_FIRSTDATAKEY(opaque);
   maxoff = PageGetMaxOffsetNumber(page);






   if (start < minoff)
    start = minoff;





   if (start > maxoff)
    start = OffsetNumberNext(maxoff);






   for (offnum = start;
     offnum <= maxoff;
     offnum = OffsetNumberNext(offnum))
   {
    itemid = PageGetItemId(page, offnum);
    item = (IndexTuple) PageGetItem(page, itemid);

    if (BTreeInnerTupleGetDownLink(item) == child)
    {

     stack->bts_blkno = blkno;
     stack->bts_offset = offnum;
     return buf;
    }
   }

   for (offnum = OffsetNumberPrev(start);
     offnum >= minoff;
     offnum = OffsetNumberPrev(offnum))
   {
    itemid = PageGetItemId(page, offnum);
    item = (IndexTuple) PageGetItem(page, itemid);

    if (BTreeInnerTupleGetDownLink(item) == child)
    {

     stack->bts_blkno = blkno;
     stack->bts_offset = offnum;
     return buf;
    }
   }
  }







  if (P_RIGHTMOST(opaque))
  {
   _bt_relbuf(rel, buf);
   return InvalidBuffer;
  }
  blkno = opaque->btpo_next;
  start = InvalidOffsetNumber;
  _bt_relbuf(rel, buf);
 }
}
