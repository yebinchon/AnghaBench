
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bt_blkno; } ;
typedef int Size ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef int Buffer ;
typedef TYPE_1__ BrinTuple ;
typedef int BrinRevmap ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BRIN_EVACUATE_PAGE ;
 int BRIN_IS_REGULAR_PAGE (int ) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int BrinPageFlags (int ) ;
 int BufferGetPage (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ FirstOffsetNumber ;
 int ItemIdGetLength (int ) ;
 scalar_t__ ItemIdIsUsed (int ) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int UnlockReleaseBuffer (int ) ;
 TYPE_1__* brin_copy_tuple (TYPE_1__*,int ,TYPE_1__*,int *) ;
 int brin_doupdate (int ,int ,int *,int ,int ,scalar_t__,TYPE_1__*,int ,TYPE_1__*,int ,int) ;

void
brin_evacuate_page(Relation idxRel, BlockNumber pagesPerRange,
       BrinRevmap *revmap, Buffer buf)
{
 OffsetNumber off;
 OffsetNumber maxoff;
 Page page;
 BrinTuple *btup = ((void*)0);
 Size btupsz = 0;

 page = BufferGetPage(buf);

 Assert(BrinPageFlags(page) & BRIN_EVACUATE_PAGE);

 maxoff = PageGetMaxOffsetNumber(page);
 for (off = FirstOffsetNumber; off <= maxoff; off++)
 {
  BrinTuple *tup;
  Size sz;
  ItemId lp;

  CHECK_FOR_INTERRUPTS();

  lp = PageGetItemId(page, off);
  if (ItemIdIsUsed(lp))
  {
   sz = ItemIdGetLength(lp);
   tup = (BrinTuple *) PageGetItem(page, lp);
   tup = brin_copy_tuple(tup, sz, btup, &btupsz);

   LockBuffer(buf, BUFFER_LOCK_UNLOCK);

   if (!brin_doupdate(idxRel, pagesPerRange, revmap, tup->bt_blkno,
          buf, off, tup, sz, tup, sz, 0))
    off--;

   LockBuffer(buf, BUFFER_LOCK_SHARE);


   if (!BRIN_IS_REGULAR_PAGE(page))
    break;
  }
 }

 UnlockReleaseBuffer(buf);
}
