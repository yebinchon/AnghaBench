
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_14__ {int buffer; int downlinkoffnum; int page; int blkno; } ;
struct TYPE_13__ {int r; TYPE_3__* stack; } ;
struct TYPE_12__ {int downlink; int buf; } ;
struct TYPE_11__ {int rightlink; } ;
typedef int Page ;
typedef int List ;
typedef int IndexTuple ;
typedef int GISTSTATE ;
typedef TYPE_1__ GISTPageSplitInfo ;
typedef TYPE_2__ GISTInsertState ;
typedef TYPE_3__ GISTInsertStack ;
typedef int Buffer ;


 int Assert (scalar_t__) ;
 int BufferGetPage (int ) ;
 int GIST_EXCLUSIVE ;
 scalar_t__ GistFollowRight (int ) ;
 TYPE_10__* GistPageGetOpaque (int ) ;
 int LOG ;
 int LockBuffer (int ,int ) ;
 int * NIL ;
 scalar_t__ OffsetNumberIsValid (int ) ;
 int ReadBuffer (int ,int ) ;
 int RelationGetRelationName (int ) ;
 int elog (int ,char*,int ,int ) ;
 int gistfinishsplit (TYPE_2__*,TYPE_3__*,int *,int *,int) ;
 int gistformdownlink (int ,int ,int *,TYPE_3__*) ;
 int * lappend (int *,TYPE_1__*) ;
 TYPE_1__* palloc (int) ;

__attribute__((used)) static void
gistfixsplit(GISTInsertState *state, GISTSTATE *giststate)
{
 GISTInsertStack *stack = state->stack;
 Buffer buf;
 Page page;
 List *splitinfo = NIL;

 elog(LOG, "fixing incomplete split in index \"%s\", block %u",
   RelationGetRelationName(state->r), stack->blkno);

 Assert(GistFollowRight(stack->page));
 Assert(OffsetNumberIsValid(stack->downlinkoffnum));

 buf = stack->buffer;





 for (;;)
 {
  GISTPageSplitInfo *si = palloc(sizeof(GISTPageSplitInfo));
  IndexTuple downlink;

  page = BufferGetPage(buf);


  downlink = gistformdownlink(state->r, buf, giststate, stack);

  si->buf = buf;
  si->downlink = downlink;

  splitinfo = lappend(splitinfo, si);

  if (GistFollowRight(page))
  {

   buf = ReadBuffer(state->r, GistPageGetOpaque(page)->rightlink);
   LockBuffer(buf, GIST_EXCLUSIVE);
  }
  else
   break;
 }


 gistfinishsplit(state, stack, giststate, splitinfo, 0);
}
