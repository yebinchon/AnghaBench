
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int buffer; } ;
struct TYPE_11__ {scalar_t__ buffer; int retry_from_parent; int downlinkoffnum; TYPE_5__* parent; } ;
struct TYPE_10__ {int r; } ;
struct TYPE_9__ {scalar_t__ buf; int downlink; } ;
typedef int List ;
typedef int IndexTuple ;
typedef int GISTSTATE ;
typedef TYPE_1__ GISTPageSplitInfo ;
typedef TYPE_2__ GISTInsertState ;
typedef TYPE_3__ GISTInsertStack ;


 int Assert (int) ;
 int GIST_EXCLUSIVE ;
 int InvalidOffsetNumber ;
 int LockBuffer (int ,int ) ;
 int gistFindCorrectParent (int ,TYPE_3__*) ;
 scalar_t__ gistinserttuples (TYPE_2__*,TYPE_5__*,int *,int *,int,int ,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;
 scalar_t__ list_nth (int *,int) ;
 scalar_t__ lsecond (int *) ;

__attribute__((used)) static void
gistfinishsplit(GISTInsertState *state, GISTInsertStack *stack,
    GISTSTATE *giststate, List *splitinfo, bool unlockbuf)
{
 GISTPageSplitInfo *right;
 GISTPageSplitInfo *left;
 IndexTuple tuples[2];


 Assert(list_length(splitinfo) >= 2);
 LockBuffer(stack->parent->buffer, GIST_EXCLUSIVE);
 gistFindCorrectParent(state->r, stack);





 for (int pos = list_length(splitinfo) - 1; pos > 1; pos--)
 {
  right = (GISTPageSplitInfo *) list_nth(splitinfo, pos);
  left = (GISTPageSplitInfo *) list_nth(splitinfo, pos - 1);

  if (gistinserttuples(state, stack->parent, giststate,
        &right->downlink, 1,
        InvalidOffsetNumber,
        left->buf, right->buf, 0, 0))
  {




   gistFindCorrectParent(state->r, stack);
  }

 }

 right = (GISTPageSplitInfo *) lsecond(splitinfo);
 left = (GISTPageSplitInfo *) linitial(splitinfo);






 tuples[0] = left->downlink;
 tuples[1] = right->downlink;
 gistinserttuples(state, stack->parent, giststate,
      tuples, 2,
      stack->downlinkoffnum,
      left->buf, right->buf,
      1,
      unlockbuf
  );
 Assert(left->buf == stack->buffer);
 stack->retry_from_parent = 1;
}
