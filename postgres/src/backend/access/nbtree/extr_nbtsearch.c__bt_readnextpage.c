
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


struct TYPE_17__ {scalar_t__ btpo_next; } ;
struct TYPE_14__ {scalar_t__ buf; scalar_t__ currPage; int moreLeft; int moreRight; } ;
struct TYPE_16__ {TYPE_11__ currPos; } ;
struct TYPE_15__ {int * parallel_scan; int xs_snapshot; int indexRelation; int opaque; } ;
typedef int ScanDirection ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_1__* IndexScanDesc ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_2__* BTScanOpaque ;
typedef TYPE_3__* BTPageOpaque ;


 int BTScanPosInvalidate (TYPE_11__) ;
 scalar_t__ BTScanPosIsPinned (TYPE_11__) ;
 int BTScanPosUnpinIfPinned (TYPE_11__) ;
 int BT_READ ;
 scalar_t__ BufferGetBlockNumber (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ InvalidBuffer ;
 int LockBuffer (scalar_t__,int ) ;
 int P_FIRSTDATAKEY (TYPE_3__*) ;
 int P_IGNORE (TYPE_3__*) ;
 scalar_t__ P_NONE ;
 int PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PredicateLockPage (int ,scalar_t__,int ) ;
 scalar_t__ ScanDirectionIsForward (int ) ;
 int TestForOldSnapshot (int ,int ,int ) ;
 void* _bt_getbuf (int ,scalar_t__,int ) ;
 int _bt_parallel_done (TYPE_1__*) ;
 int _bt_parallel_release (TYPE_1__*,scalar_t__) ;
 int _bt_parallel_seize (TYPE_1__*,scalar_t__*) ;
 scalar_t__ _bt_readpage (TYPE_1__*,int ,int ) ;
 int _bt_relbuf (int ,scalar_t__) ;
 scalar_t__ _bt_walk_left (int ,scalar_t__,int ) ;

__attribute__((used)) static bool
_bt_readnextpage(IndexScanDesc scan, BlockNumber blkno, ScanDirection dir)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 Relation rel;
 Page page;
 BTPageOpaque opaque;
 bool status = 1;

 rel = scan->indexRelation;

 if (ScanDirectionIsForward(dir))
 {
  for (;;)
  {




   if (blkno == P_NONE || !so->currPos.moreRight)
   {
    _bt_parallel_done(scan);
    BTScanPosInvalidate(so->currPos);
    return 0;
   }

   CHECK_FOR_INTERRUPTS();

   so->currPos.buf = _bt_getbuf(rel, blkno, BT_READ);
   page = BufferGetPage(so->currPos.buf);
   TestForOldSnapshot(scan->xs_snapshot, rel, page);
   opaque = (BTPageOpaque) PageGetSpecialPointer(page);

   if (!P_IGNORE(opaque))
   {
    PredicateLockPage(rel, blkno, scan->xs_snapshot);


    if (_bt_readpage(scan, dir, P_FIRSTDATAKEY(opaque)))
     break;
   }
   else if (scan->parallel_scan != ((void*)0))
   {

    _bt_parallel_release(scan, opaque->btpo_next);
   }


   if (scan->parallel_scan != ((void*)0))
   {
    _bt_relbuf(rel, so->currPos.buf);
    status = _bt_parallel_seize(scan, &blkno);
    if (!status)
    {
     BTScanPosInvalidate(so->currPos);
     return 0;
    }
   }
   else
   {
    blkno = opaque->btpo_next;
    _bt_relbuf(rel, so->currPos.buf);
   }
  }
 }
 else
 {




  if (so->currPos.currPage != blkno)
  {
   BTScanPosUnpinIfPinned(so->currPos);
   so->currPos.currPage = blkno;
  }
  if (BTScanPosIsPinned(so->currPos))
   LockBuffer(so->currPos.buf, BT_READ);
  else
   so->currPos.buf = _bt_getbuf(rel, so->currPos.currPage, BT_READ);

  for (;;)
  {

   if (!so->currPos.moreLeft)
   {
    _bt_relbuf(rel, so->currPos.buf);
    _bt_parallel_done(scan);
    BTScanPosInvalidate(so->currPos);
    return 0;
   }


   so->currPos.buf = _bt_walk_left(rel, so->currPos.buf,
           scan->xs_snapshot);


   if (so->currPos.buf == InvalidBuffer)
   {
    _bt_parallel_done(scan);
    BTScanPosInvalidate(so->currPos);
    return 0;
   }






   page = BufferGetPage(so->currPos.buf);
   TestForOldSnapshot(scan->xs_snapshot, rel, page);
   opaque = (BTPageOpaque) PageGetSpecialPointer(page);
   if (!P_IGNORE(opaque))
   {
    PredicateLockPage(rel, BufferGetBlockNumber(so->currPos.buf), scan->xs_snapshot);


    if (_bt_readpage(scan, dir, PageGetMaxOffsetNumber(page)))
     break;
   }
   else if (scan->parallel_scan != ((void*)0))
   {

    _bt_parallel_release(scan, BufferGetBlockNumber(so->currPos.buf));
   }







   if (scan->parallel_scan != ((void*)0))
   {
    _bt_relbuf(rel, so->currPos.buf);
    status = _bt_parallel_seize(scan, &blkno);
    if (!status)
    {
     BTScanPosInvalidate(so->currPos);
     return 0;
    }
    so->currPos.buf = _bt_getbuf(rel, blkno, BT_READ);
   }
  }
 }

 return 1;
}
