
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIDBitmap ;
typedef int Size ;
typedef int Page ;
typedef int ItemPointer ;
typedef int GinPostingList ;


 int * GinDataLeafPageGetPostingList (int ) ;
 int GinDataLeafPageGetPostingListSize (int ) ;
 scalar_t__ GinPageIsCompressed (int ) ;
 int dataLeafPageGetUncompressed (int ,int*) ;
 int ginPostingListDecodeAllSegmentsToTbm (int *,int ,int *) ;
 int tbm_add_tuples (int *,int ,int,int) ;

int
GinDataLeafPageGetItemsToTbm(Page page, TIDBitmap *tbm)
{
 ItemPointer uncompressed;
 int nitems;

 if (GinPageIsCompressed(page))
 {
  GinPostingList *segment = GinDataLeafPageGetPostingList(page);
  Size len = GinDataLeafPageGetPostingListSize(page);

  nitems = ginPostingListDecodeAllSegmentsToTbm(segment, len, tbm);
 }
 else
 {
  uncompressed = dataLeafPageGetUncompressed(page, &nitems);

  if (nitems > 0)
   tbm_add_tuples(tbm, uncompressed, nitems, 0);
 }

 return nitems;
}
