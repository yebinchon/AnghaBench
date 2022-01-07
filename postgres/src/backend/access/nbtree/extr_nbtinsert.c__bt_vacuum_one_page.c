
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef int Buffer ;
typedef int BTPageOpaque ;


 int Assert (int ) ;
 int BufferGetPage (int ) ;
 scalar_t__ ItemIdIsDead (int ) ;
 int MaxOffsetNumber ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ P_FIRSTDATAKEY (int ) ;
 int P_ISLEAF (int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageGetSpecialPointer (int ) ;
 int _bt_delitems_delete (int ,int ,scalar_t__*,int,int ) ;

__attribute__((used)) static void
_bt_vacuum_one_page(Relation rel, Buffer buffer, Relation heapRel)
{
 OffsetNumber deletable[MaxOffsetNumber];
 int ndeletable = 0;
 OffsetNumber offnum,
    minoff,
    maxoff;
 Page page = BufferGetPage(buffer);
 BTPageOpaque opaque = (BTPageOpaque) PageGetSpecialPointer(page);

 Assert(P_ISLEAF(opaque));





 minoff = P_FIRSTDATAKEY(opaque);
 maxoff = PageGetMaxOffsetNumber(page);
 for (offnum = minoff;
   offnum <= maxoff;
   offnum = OffsetNumberNext(offnum))
 {
  ItemId itemId = PageGetItemId(page, offnum);

  if (ItemIdIsDead(itemId))
   deletable[ndeletable++] = offnum;
 }

 if (ndeletable > 0)
  _bt_delitems_delete(rel, buffer, deletable, ndeletable, heapRel);







}
