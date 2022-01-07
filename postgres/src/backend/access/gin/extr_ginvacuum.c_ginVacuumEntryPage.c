
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_4__ {int index; int ginstate; } ;
typedef int * Page ;
typedef scalar_t__ OffsetNumber ;
typedef int * ItemPointer ;
typedef int Item ;
typedef int * IndexTuple ;
typedef TYPE_1__ GinVacuumState ;
typedef int GinPostingList ;
typedef int GinNullCategory ;
typedef int Datum ;
typedef int Buffer ;
typedef int BlockNumber ;


 int * BufferGetPage (int ) ;
 int ERROR ;
 scalar_t__ FirstOffsetNumber ;
 int * GinFormTuple (int *,scalar_t__,int ,int ,char*,int,int,int) ;
 int GinGetDownlink (int *) ;
 int GinGetNPosting (int *) ;
 scalar_t__ GinGetPosting (int *) ;
 scalar_t__ GinIsPostingTree (int *) ;
 scalar_t__ GinItupIsCompressed (int *) ;
 int GinMaxItemSize ;
 int IndexTupleSize (int *) ;
 scalar_t__ PageAddItem (int *,int ,int ,scalar_t__,int,int) ;
 scalar_t__ PageGetItem (int *,int ) ;
 int PageGetItemId (int *,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int *) ;
 int * PageGetTempPageCopy (int *) ;
 int PageIndexTupleDelete (int *,scalar_t__) ;
 int RelationGetRelationName (int ) ;
 int SizeOfGinPostingList (int *) ;
 int elog (int ,char*,int ) ;
 int * ginCompressPostingList (int *,int,int ,int *) ;
 int * ginPostingListDecode (int *,int*) ;
 int * ginVacuumItemPointers (TYPE_1__*,int *,int,int*) ;
 scalar_t__ gintuple_get_attrnum (int *,int *) ;
 int gintuple_get_key (int *,int *,int *) ;
 int pfree (int *) ;

__attribute__((used)) static Page
ginVacuumEntryPage(GinVacuumState *gvs, Buffer buffer, BlockNumber *roots, uint32 *nroot)
{
 Page origpage = BufferGetPage(buffer),
    tmppage;
 OffsetNumber i,
    maxoff = PageGetMaxOffsetNumber(origpage);

 tmppage = origpage;

 *nroot = 0;

 for (i = FirstOffsetNumber; i <= maxoff; i++)
 {
  IndexTuple itup = (IndexTuple) PageGetItem(tmppage, PageGetItemId(tmppage, i));

  if (GinIsPostingTree(itup))
  {




   roots[*nroot] = GinGetDownlink(itup);
   (*nroot)++;
  }
  else if (GinGetNPosting(itup) > 0)
  {
   int nitems;
   ItemPointer items_orig;
   bool free_items_orig;
   ItemPointer items;


   if (GinItupIsCompressed(itup))
   {
    items_orig = ginPostingListDecode((GinPostingList *) GinGetPosting(itup), &nitems);
    free_items_orig = 1;
   }
   else
   {
    items_orig = (ItemPointer) GinGetPosting(itup);
    nitems = GinGetNPosting(itup);
    free_items_orig = 0;
   }


   items = ginVacuumItemPointers(gvs, items_orig, nitems, &nitems);

   if (free_items_orig)
    pfree(items_orig);


   if (items)
   {
    OffsetNumber attnum;
    Datum key;
    GinNullCategory category;
    GinPostingList *plist;
    int plistsize;

    if (nitems > 0)
    {
     plist = ginCompressPostingList(items, nitems, GinMaxItemSize, ((void*)0));
     plistsize = SizeOfGinPostingList(plist);
    }
    else
    {
     plist = ((void*)0);
     plistsize = 0;
    }





    if (tmppage == origpage)
    {




     tmppage = PageGetTempPageCopy(origpage);


     itup = (IndexTuple) PageGetItem(tmppage, PageGetItemId(tmppage, i));
    }

    attnum = gintuple_get_attrnum(&gvs->ginstate, itup);
    key = gintuple_get_key(&gvs->ginstate, itup, &category);
    itup = GinFormTuple(&gvs->ginstate, attnum, key, category,
         (char *) plist, plistsize,
         nitems, 1);
    if (plist)
     pfree(plist);
    PageIndexTupleDelete(tmppage, i);

    if (PageAddItem(tmppage, (Item) itup, IndexTupleSize(itup), i, 0, 0) != i)
     elog(ERROR, "failed to add item to index page in \"%s\"",
       RelationGetRelationName(gvs->index));

    pfree(itup);
    pfree(items);
   }
  }
 }

 return (tmppage == origpage) ? ((void*)0) : tmppage;
}
