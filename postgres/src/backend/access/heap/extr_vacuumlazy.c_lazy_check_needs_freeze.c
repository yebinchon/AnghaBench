
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef scalar_t__ HeapTupleHeader ;
typedef int Buffer ;


 int BufferGetPage (int ) ;
 scalar_t__ FirstOffsetNumber ;
 int FreezeLimit ;
 int ItemIdIsNormal (int ) ;
 scalar_t__ ItemIdIsUsed (int ) ;
 int MultiXactCutoff ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageIsEmpty (int ) ;
 scalar_t__ PageIsNew (int ) ;
 scalar_t__ heap_tuple_needs_freeze (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static bool
lazy_check_needs_freeze(Buffer buf, bool *hastup)
{
 Page page = BufferGetPage(buf);
 OffsetNumber offnum,
    maxoff;
 HeapTupleHeader tupleheader;

 *hastup = 0;







 if (PageIsNew(page) || PageIsEmpty(page))
  return 0;

 maxoff = PageGetMaxOffsetNumber(page);
 for (offnum = FirstOffsetNumber;
   offnum <= maxoff;
   offnum = OffsetNumberNext(offnum))
 {
  ItemId itemid;

  itemid = PageGetItemId(page, offnum);


  if (ItemIdIsUsed(itemid))
   *hastup = 1;


  if (!ItemIdIsNormal(itemid))
   continue;

  tupleheader = (HeapTupleHeader) PageGetItem(page, itemid);

  if (heap_tuple_needs_freeze(tupleheader, FreezeLimit,
         MultiXactCutoff, buf))
   return 1;
 }

 return 0;
}
