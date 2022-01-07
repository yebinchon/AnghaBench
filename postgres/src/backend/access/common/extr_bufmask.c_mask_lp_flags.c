
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lp_flags; } ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef TYPE_1__* ItemId ;


 scalar_t__ FirstOffsetNumber ;
 scalar_t__ ItemIdIsUsed (TYPE_1__*) ;
 int LP_UNUSED ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 TYPE_1__* PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;

void
mask_lp_flags(Page page)
{
 OffsetNumber offnum,
    maxoff;

 maxoff = PageGetMaxOffsetNumber(page);
 for (offnum = FirstOffsetNumber;
   offnum <= maxoff;
   offnum = OffsetNumberNext(offnum))
 {
  ItemId itemId = PageGetItemId(page, offnum);

  if (ItemIdIsUsed(itemId))
   itemId->lp_flags = LP_UNUSED;
 }
}
