
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ blkno; scalar_t__ lsn; int retry_from_parent; int buffer; struct TYPE_17__* parent; void* page; void* downlinkoffnum; } ;
struct TYPE_16__ {int is_build; TYPE_3__* stack; void* r; void* heapRel; int freespace; } ;
struct TYPE_15__ {int t_tid; } ;
typedef int Size ;
typedef void* Relation ;
typedef void* Page ;
typedef void* OffsetNumber ;
typedef int ItemId ;
typedef TYPE_1__* IndexTuple ;
typedef int GISTSTATE ;
typedef TYPE_2__ GISTInsertState ;
typedef TYPE_3__ GISTInsertStack ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BufferGetLSNAtomic (int ) ;
 scalar_t__ BufferGetPage (int ) ;
 int ERROR ;
 int GIST_EXCLUSIVE ;
 scalar_t__ GIST_ROOT_BLKNO ;
 int GIST_SHARE ;
 int GIST_UNLOCK ;
 scalar_t__ GistFollowRight (void*) ;
 scalar_t__ GistPageGetNSN (void*) ;
 scalar_t__ GistPageIsDeleted (void*) ;
 int GistPageIsLeaf (void*) ;
 scalar_t__ GistTupleIsInvalid (TYPE_1__*) ;
 void* InvalidOffsetNumber ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ PageGetItem (void*,int ) ;
 int PageGetItemId (void*,void*) ;
 scalar_t__ PageGetLSN (void*) ;
 int ReadBuffer (void*,scalar_t__) ;
 int RelationGetRelationName (void*) ;
 int RelationNeedsWAL (void*) ;
 int ReleaseBuffer (int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogRecPtrIsInvalid (scalar_t__) ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int gistcheckpage (void*,int ) ;
 void* gistchoose (void*,void*,TYPE_1__*,int *) ;
 int gistfixsplit (TYPE_2__*,int *) ;
 TYPE_1__* gistgetadjusted (void*,TYPE_1__*,TYPE_1__*,int *) ;
 scalar_t__ gistinserttuple (TYPE_2__*,TYPE_3__*,int *,TYPE_1__*,void*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ palloc0 (int) ;

void
gistdoinsert(Relation r, IndexTuple itup, Size freespace,
    GISTSTATE *giststate, Relation heapRel, bool is_build)
{
 ItemId iid;
 IndexTuple idxtuple;
 GISTInsertStack firststack;
 GISTInsertStack *stack;
 GISTInsertState state;
 bool xlocked = 0;

 memset(&state, 0, sizeof(GISTInsertState));
 state.freespace = freespace;
 state.r = r;
 state.heapRel = heapRel;
 state.is_build = is_build;


 firststack.blkno = GIST_ROOT_BLKNO;
 firststack.lsn = 0;
 firststack.retry_from_parent = 0;
 firststack.parent = ((void*)0);
 firststack.downlinkoffnum = InvalidOffsetNumber;
 state.stack = stack = &firststack;







 for (;;)
 {






  while (stack->retry_from_parent)
  {
   if (xlocked)
    LockBuffer(stack->buffer, GIST_UNLOCK);
   xlocked = 0;
   ReleaseBuffer(stack->buffer);
   state.stack = stack = stack->parent;
  }

  if (XLogRecPtrIsInvalid(stack->lsn))
   stack->buffer = ReadBuffer(state.r, stack->blkno);





  if (!xlocked)
  {
   LockBuffer(stack->buffer, GIST_SHARE);
   gistcheckpage(state.r, stack->buffer);
  }

  stack->page = (Page) BufferGetPage(stack->buffer);
  stack->lsn = xlocked ?
   PageGetLSN(stack->page) : BufferGetLSNAtomic(stack->buffer);
  Assert(!RelationNeedsWAL(state.r) || !XLogRecPtrIsInvalid(stack->lsn));






  if (GistFollowRight(stack->page))
  {
   if (!xlocked)
   {
    LockBuffer(stack->buffer, GIST_UNLOCK);
    LockBuffer(stack->buffer, GIST_EXCLUSIVE);
    xlocked = 1;

    if (!GistFollowRight(stack->page))
     continue;
   }
   gistfixsplit(&state, giststate);

   UnlockReleaseBuffer(stack->buffer);
   xlocked = 0;
   state.stack = stack = stack->parent;
   continue;
  }

  if ((stack->blkno != GIST_ROOT_BLKNO &&
    stack->parent->lsn < GistPageGetNSN(stack->page)) ||
   GistPageIsDeleted(stack->page))
  {






   UnlockReleaseBuffer(stack->buffer);
   xlocked = 0;
   state.stack = stack = stack->parent;
   continue;
  }

  if (!GistPageIsLeaf(stack->page))
  {




   BlockNumber childblkno;
   IndexTuple newtup;
   GISTInsertStack *item;
   OffsetNumber downlinkoffnum;

   downlinkoffnum = gistchoose(state.r, stack->page, itup, giststate);
   iid = PageGetItemId(stack->page, downlinkoffnum);
   idxtuple = (IndexTuple) PageGetItem(stack->page, iid);
   childblkno = ItemPointerGetBlockNumber(&(idxtuple->t_tid));




   if (GistTupleIsInvalid(idxtuple))
    ereport(ERROR,
      (errmsg("index \"%s\" contains an inner tuple marked as invalid",
        RelationGetRelationName(r)),
       errdetail("This is caused by an incomplete page split at crash recovery before upgrading to PostgreSQL 9.1."),
       errhint("Please REINDEX it.")));





   newtup = gistgetadjusted(state.r, idxtuple, itup, giststate);
   if (newtup)
   {




    if (!xlocked)
    {
     LockBuffer(stack->buffer, GIST_UNLOCK);
     LockBuffer(stack->buffer, GIST_EXCLUSIVE);
     xlocked = 1;
     stack->page = (Page) BufferGetPage(stack->buffer);

     if (PageGetLSN(stack->page) != stack->lsn)
     {

      continue;
     }
    }
    if (gistinserttuple(&state, stack, giststate, newtup,
         downlinkoffnum))
    {






     if (stack->blkno != GIST_ROOT_BLKNO)
     {
      UnlockReleaseBuffer(stack->buffer);
      xlocked = 0;
      state.stack = stack = stack->parent;
     }
     continue;
    }
   }
   LockBuffer(stack->buffer, GIST_UNLOCK);
   xlocked = 0;


   item = (GISTInsertStack *) palloc0(sizeof(GISTInsertStack));
   item->blkno = childblkno;
   item->parent = stack;
   item->downlinkoffnum = downlinkoffnum;
   state.stack = stack = item;
  }
  else
  {
   if (!xlocked)
   {
    LockBuffer(stack->buffer, GIST_UNLOCK);
    LockBuffer(stack->buffer, GIST_EXCLUSIVE);
    xlocked = 1;
    stack->page = (Page) BufferGetPage(stack->buffer);
    stack->lsn = PageGetLSN(stack->page);

    if (stack->blkno == GIST_ROOT_BLKNO)
    {




     if (!GistPageIsLeaf(stack->page))
     {




      LockBuffer(stack->buffer, GIST_UNLOCK);
      xlocked = 0;
      continue;
     }





    }
    else if ((GistFollowRight(stack->page) ||
        stack->parent->lsn < GistPageGetNSN(stack->page)) &&
       GistPageIsDeleted(stack->page))
    {




     UnlockReleaseBuffer(stack->buffer);
     xlocked = 0;
     state.stack = stack = stack->parent;
     continue;
    }
   }



   gistinserttuple(&state, stack, giststate, itup,
       InvalidOffsetNumber);
   LockBuffer(stack->buffer, GIST_UNLOCK);


   for (; stack; stack = stack->parent)
    ReleaseBuffer(stack->buffer);
   break;
  }
 }
}
