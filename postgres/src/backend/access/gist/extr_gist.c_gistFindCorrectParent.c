
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ rightlink; } ;
struct TYPE_7__ {scalar_t__ downlinkoffnum; scalar_t__ lsn; scalar_t__ blkno; void* buffer; struct TYPE_7__* parent; void* page; } ;
struct TYPE_6__ {int t_tid; } ;
typedef int Relation ;
typedef void* Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef TYPE_1__* IndexTuple ;
typedef TYPE_2__ GISTInsertStack ;


 scalar_t__ BufferGetPage (void*) ;
 scalar_t__ FirstOffsetNumber ;
 int GIST_EXCLUSIVE ;
 TYPE_5__* GistPageGetOpaque (void*) ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 int LockBuffer (void*,int ) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ PageGetItem (void*,int ) ;
 int PageGetItemId (void*,scalar_t__) ;
 scalar_t__ PageGetLSN (void*) ;
 scalar_t__ PageGetMaxOffsetNumber (void*) ;
 void* ReadBuffer (int ,scalar_t__) ;
 int ReleaseBuffer (void*) ;
 int UnlockReleaseBuffer (void*) ;
 TYPE_2__* gistFindPath (int ,scalar_t__,scalar_t__*) ;
 int gistcheckpage (int ,void*) ;

__attribute__((used)) static void
gistFindCorrectParent(Relation r, GISTInsertStack *child)
{
 GISTInsertStack *parent = child->parent;

 gistcheckpage(r, parent->buffer);
 parent->page = (Page) BufferGetPage(parent->buffer);


 if (child->downlinkoffnum == InvalidOffsetNumber ||
  parent->lsn != PageGetLSN(parent->page))
 {

  OffsetNumber i,
     maxoff;
  ItemId iid;
  IndexTuple idxtuple;
  GISTInsertStack *ptr;

  while (1)
  {
   maxoff = PageGetMaxOffsetNumber(parent->page);
   for (i = FirstOffsetNumber; i <= maxoff; i = OffsetNumberNext(i))
   {
    iid = PageGetItemId(parent->page, i);
    idxtuple = (IndexTuple) PageGetItem(parent->page, iid);
    if (ItemPointerGetBlockNumber(&(idxtuple->t_tid)) == child->blkno)
    {

     child->downlinkoffnum = i;
     return;
    }
   }

   parent->blkno = GistPageGetOpaque(parent->page)->rightlink;
   UnlockReleaseBuffer(parent->buffer);
   if (parent->blkno == InvalidBlockNumber)
   {




    break;
   }
   parent->buffer = ReadBuffer(r, parent->blkno);
   LockBuffer(parent->buffer, GIST_EXCLUSIVE);
   gistcheckpage(r, parent->buffer);
   parent->page = (Page) BufferGetPage(parent->buffer);
  }






  ptr = child->parent->parent;

  while (ptr)
  {
   ReleaseBuffer(ptr->buffer);
   ptr = ptr->parent;
  }


  ptr = parent = gistFindPath(r, child->blkno, &child->downlinkoffnum);



  while (ptr)
  {
   ptr->buffer = ReadBuffer(r, ptr->blkno);
   ptr->page = (Page) BufferGetPage(ptr->buffer);
   ptr = ptr->parent;
  }


  child->parent = parent;


  LockBuffer(child->parent->buffer, GIST_EXCLUSIVE);
  gistFindCorrectParent(r, child);
 }

 return;
}
