
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ curBlkno; scalar_t__ curPageLSN; int numKilled; int * killedItems; } ;
struct TYPE_4__ {int indexRelation; int opaque; } ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* GISTScanOpaque ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BufferGetLSNAtomic (int ) ;
 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int GIST_SHARE ;
 int GistMarkPageHasGarbage (int ) ;
 int GistPageIsLeaf (int ) ;
 scalar_t__ InvalidBlockNumber ;
 int ItemIdMarkDead (int ) ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirtyHint (int ,int) ;
 int PageGetItemId (int ,int ) ;
 int ReadBuffer (int ,scalar_t__) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogRecPtrIsInvalid (scalar_t__) ;
 int gistcheckpage (int ,int ) ;

__attribute__((used)) static void
gistkillitems(IndexScanDesc scan)
{
 GISTScanOpaque so = (GISTScanOpaque) scan->opaque;
 Buffer buffer;
 Page page;
 OffsetNumber offnum;
 ItemId iid;
 int i;
 bool killedsomething = 0;

 Assert(so->curBlkno != InvalidBlockNumber);
 Assert(!XLogRecPtrIsInvalid(so->curPageLSN));
 Assert(so->killedItems != ((void*)0));

 buffer = ReadBuffer(scan->indexRelation, so->curBlkno);
 if (!BufferIsValid(buffer))
  return;

 LockBuffer(buffer, GIST_SHARE);
 gistcheckpage(scan->indexRelation, buffer);
 page = BufferGetPage(buffer);






 if (BufferGetLSNAtomic(buffer) != so->curPageLSN)
 {
  UnlockReleaseBuffer(buffer);
  so->numKilled = 0;
  return;
 }

 Assert(GistPageIsLeaf(page));





 for (i = 0; i < so->numKilled; i++)
 {
  offnum = so->killedItems[i];
  iid = PageGetItemId(page, offnum);
  ItemIdMarkDead(iid);
  killedsomething = 1;
 }

 if (killedsomething)
 {
  GistMarkPageHasGarbage(page);
  MarkBufferDirtyHint(buffer, 1);
 }

 UnlockReleaseBuffer(buffer);





 so->numKilled = 0;
}
