
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIDBitmap ;
typedef int ItemPointer ;
typedef int GinPostingList ;


 int ginPostingListDecodeAllSegments (int *,int,int*) ;
 int pfree (int ) ;
 int tbm_add_tuples (int *,int ,int,int) ;

int
ginPostingListDecodeAllSegmentsToTbm(GinPostingList *ptr, int len,
          TIDBitmap *tbm)
{
 int ndecoded;
 ItemPointer items;

 items = ginPostingListDecodeAllSegments(ptr, len, &ndecoded);
 tbm_add_tuples(tbm, items, ndecoded, 0);
 pfree(items);

 return ndecoded;
}
