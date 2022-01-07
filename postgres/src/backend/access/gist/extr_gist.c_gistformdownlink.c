
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ downlinkoffnum; TYPE_1__* parent; } ;
struct TYPE_14__ {int t_tid; } ;
struct TYPE_13__ {int buffer; int page; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef TYPE_2__* IndexTuple ;
typedef int GISTSTATE ;
typedef TYPE_3__ GISTInsertStack ;
typedef int Buffer ;


 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 TYPE_2__* CopyIndexTuple (TYPE_2__*) ;
 scalar_t__ FirstOffsetNumber ;
 int GIST_EXCLUSIVE ;
 int GIST_UNLOCK ;
 int GistTupleSetValid (TYPE_2__*) ;
 int ItemPointerSetBlockNumber (int *,int ) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int gistFindCorrectParent (int ,TYPE_3__*) ;
 TYPE_2__* gistgetadjusted (int ,TYPE_2__*,TYPE_2__*,int *) ;

__attribute__((used)) static IndexTuple
gistformdownlink(Relation rel, Buffer buf, GISTSTATE *giststate,
     GISTInsertStack *stack)
{
 Page page = BufferGetPage(buf);
 OffsetNumber maxoff;
 OffsetNumber offset;
 IndexTuple downlink = ((void*)0);

 maxoff = PageGetMaxOffsetNumber(page);
 for (offset = FirstOffsetNumber; offset <= maxoff; offset = OffsetNumberNext(offset))
 {
  IndexTuple ituple = (IndexTuple)
  PageGetItem(page, PageGetItemId(page, offset));

  if (downlink == ((void*)0))
   downlink = CopyIndexTuple(ituple);
  else
  {
   IndexTuple newdownlink;

   newdownlink = gistgetadjusted(rel, downlink, ituple,
            giststate);
   if (newdownlink)
    downlink = newdownlink;
  }
 }
 if (!downlink)
 {
  ItemId iid;

  LockBuffer(stack->parent->buffer, GIST_EXCLUSIVE);
  gistFindCorrectParent(rel, stack);
  iid = PageGetItemId(stack->parent->page, stack->downlinkoffnum);
  downlink = (IndexTuple) PageGetItem(stack->parent->page, iid);
  downlink = CopyIndexTuple(downlink);
  LockBuffer(stack->parent->buffer, GIST_UNLOCK);
 }

 ItemPointerSetBlockNumber(&(downlink->t_tid), BufferGetBlockNumber(buf));
 GistTupleSetValid(downlink);

 return downlink;
}
