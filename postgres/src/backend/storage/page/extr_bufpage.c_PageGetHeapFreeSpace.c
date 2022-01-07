
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;
typedef int PageHeader ;
typedef scalar_t__ Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;


 scalar_t__ FirstOffsetNumber ;
 int ItemIdIsUsed (int ) ;
 scalar_t__ MaxHeapTuplesPerPage ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ PageGetFreeSpace (scalar_t__) ;
 int PageGetItemId (scalar_t__,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (scalar_t__) ;
 scalar_t__ PageHasFreeLinePointers (int ) ;

Size
PageGetHeapFreeSpace(Page page)
{
 Size space;

 space = PageGetFreeSpace(page);
 if (space > 0)
 {
  OffsetNumber offnum,
     nline;




  nline = PageGetMaxOffsetNumber(page);
  if (nline >= MaxHeapTuplesPerPage)
  {
   if (PageHasFreeLinePointers((PageHeader) page))
   {




    for (offnum = FirstOffsetNumber; offnum <= nline; offnum = OffsetNumberNext(offnum))
    {
     ItemId lp = PageGetItemId(page, offnum);

     if (!ItemIdIsUsed(lp))
      break;
    }

    if (offnum > nline)
    {




     space = 0;
    }
   }
   else
   {




    space = 0;
   }
  }
 }
 return space;
}
