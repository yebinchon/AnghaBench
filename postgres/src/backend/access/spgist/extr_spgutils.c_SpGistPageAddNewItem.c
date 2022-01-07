
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tupstate; } ;
struct TYPE_4__ {scalar_t__ nPlaceholder; } ;
typedef int SpGistState ;
typedef TYPE_1__* SpGistPageOpaque ;
typedef TYPE_2__* SpGistDeadTuple ;
typedef scalar_t__ Size ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int Item ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ FirstOffsetNumber ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 int PANIC ;
 scalar_t__ PageAddItem (int ,int ,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ PageGetExactFreeSpace (int ) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageIndexTupleDelete (int ,scalar_t__) ;
 scalar_t__ SGDTSIZE ;
 scalar_t__ SPGIST_PLACEHOLDER ;
 TYPE_1__* SpGistPageGetOpaque (int ) ;
 int elog (int ,char*,int) ;

OffsetNumber
SpGistPageAddNewItem(SpGistState *state, Page page, Item item, Size size,
      OffsetNumber *startOffset, bool errorOK)
{
 SpGistPageOpaque opaque = SpGistPageGetOpaque(page);
 OffsetNumber i,
    maxoff,
    offnum;

 if (opaque->nPlaceholder > 0 &&
  PageGetExactFreeSpace(page) + SGDTSIZE >= MAXALIGN(size))
 {

  maxoff = PageGetMaxOffsetNumber(page);
  offnum = InvalidOffsetNumber;

  for (;;)
  {
   if (startOffset && *startOffset != InvalidOffsetNumber)
    i = *startOffset;
   else
    i = FirstOffsetNumber;
   for (; i <= maxoff; i++)
   {
    SpGistDeadTuple it = (SpGistDeadTuple) PageGetItem(page,
                   PageGetItemId(page, i));

    if (it->tupstate == SPGIST_PLACEHOLDER)
    {
     offnum = i;
     break;
    }
   }


   if (offnum != InvalidOffsetNumber)
    break;

   if (startOffset && *startOffset != InvalidOffsetNumber)
   {

    *startOffset = InvalidOffsetNumber;
    continue;
   }


   opaque->nPlaceholder = 0;
   break;
  }

  if (offnum != InvalidOffsetNumber)
  {

   PageIndexTupleDelete(page, offnum);

   offnum = PageAddItem(page, item, size, offnum, 0, 0);







   if (offnum != InvalidOffsetNumber)
   {
    Assert(opaque->nPlaceholder > 0);
    opaque->nPlaceholder--;
    if (startOffset)
     *startOffset = offnum + 1;
   }
   else
    elog(PANIC, "failed to add item of size %u to SPGiST index page",
      (int) size);

   return offnum;
  }
 }


 offnum = PageAddItem(page, item, size,
       InvalidOffsetNumber, 0, 0);

 if (offnum == InvalidOffsetNumber && !errorOK)
  elog(ERROR, "failed to add item of size %u to SPGiST index page",
    (int) size);

 return offnum;
}
