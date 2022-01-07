
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int indexrel; int * gfbb; int * giststate; } ;
struct TYPE_13__ {int t_tid; } ;
typedef int Relation ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef TYPE_1__* IndexTuple ;
typedef int GISTSTATE ;
typedef int GISTNodeBuffer ;
typedef TYPE_2__ GISTBuildState ;
typedef int GISTBuildBuffers ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 scalar_t__ BUFFER_OVERFLOWED (int *,int *) ;
 scalar_t__ BufferGetPage (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int GIST_EXCLUSIVE ;
 int InvalidBlockNumber ;
 int InvalidOffsetNumber ;
 int ItemPointerGetBlockNumber (int *) ;
 scalar_t__ LEVEL_HAS_BUFFERS (int,int *) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,int ) ;
 int ReadBuffer (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int * gistGetNodeBuffer (int *,int *,int ,int) ;
 int gistMemorizeParent (TYPE_2__*,int ,int ) ;
 int gistPushItupToNodeBuffer (int *,int *,TYPE_1__*) ;
 int gistbufferinginserttuples (TYPE_2__*,int ,int,TYPE_1__**,int,int ,int ,int ) ;
 int gistchoose (int ,scalar_t__,TYPE_1__*,int *) ;
 TYPE_1__* gistgetadjusted (int ,TYPE_1__*,TYPE_1__*,int *) ;

__attribute__((used)) static bool
gistProcessItup(GISTBuildState *buildstate, IndexTuple itup,
    BlockNumber startblkno, int startlevel)
{
 GISTSTATE *giststate = buildstate->giststate;
 GISTBuildBuffers *gfbb = buildstate->gfbb;
 Relation indexrel = buildstate->indexrel;
 BlockNumber childblkno;
 Buffer buffer;
 bool result = 0;
 BlockNumber blkno;
 int level;
 OffsetNumber downlinkoffnum = InvalidOffsetNumber;
 BlockNumber parentblkno = InvalidBlockNumber;

 CHECK_FOR_INTERRUPTS();






 blkno = startblkno;
 level = startlevel;
 for (;;)
 {
  ItemId iid;
  IndexTuple idxtuple,
     newtup;
  Page page;
  OffsetNumber childoffnum;


  if (LEVEL_HAS_BUFFERS(level, gfbb) && level != startlevel)
   break;


  if (level == 0)
   break;






  buffer = ReadBuffer(indexrel, blkno);
  LockBuffer(buffer, GIST_EXCLUSIVE);

  page = (Page) BufferGetPage(buffer);
  childoffnum = gistchoose(indexrel, page, itup, giststate);
  iid = PageGetItemId(page, childoffnum);
  idxtuple = (IndexTuple) PageGetItem(page, iid);
  childblkno = ItemPointerGetBlockNumber(&(idxtuple->t_tid));

  if (level > 1)
   gistMemorizeParent(buildstate, childblkno, blkno);





  newtup = gistgetadjusted(indexrel, idxtuple, itup, giststate);
  if (newtup)
  {
   blkno = gistbufferinginserttuples(buildstate,
             buffer,
             level,
             &newtup,
             1,
             childoffnum,
             InvalidBlockNumber,
             InvalidOffsetNumber);

  }
  else
   UnlockReleaseBuffer(buffer);


  parentblkno = blkno;
  blkno = childblkno;
  downlinkoffnum = childoffnum;
  Assert(level > 0);
  level--;
 }

 if (LEVEL_HAS_BUFFERS(level, gfbb))
 {




  GISTNodeBuffer *childNodeBuffer;


  childNodeBuffer = gistGetNodeBuffer(gfbb, giststate, blkno, level);


  gistPushItupToNodeBuffer(gfbb, childNodeBuffer, itup);

  if (BUFFER_OVERFLOWED(childNodeBuffer, gfbb))
   result = 1;
 }
 else
 {



  Assert(level == 0);
  buffer = ReadBuffer(indexrel, blkno);
  LockBuffer(buffer, GIST_EXCLUSIVE);
  gistbufferinginserttuples(buildstate, buffer, level,
          &itup, 1, InvalidOffsetNumber,
          parentblkno, downlinkoffnum);

 }

 return result;
}
