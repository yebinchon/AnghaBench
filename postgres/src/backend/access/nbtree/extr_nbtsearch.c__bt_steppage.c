
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int lastItem; int moreLeft; int moreRight; int currPage; int nextPage; scalar_t__ nextTupleOffset; int buf; } ;
struct TYPE_17__ {int itemIndex; } ;
struct TYPE_16__ {scalar_t__ numKilled; int markItemIndex; TYPE_4__ currPos; TYPE_3__ markPos; TYPE_4__* currTuples; TYPE_3__* markTuples; } ;
struct TYPE_15__ {int * parallel_scan; int opaque; } ;
typedef int ScanDirection ;
typedef TYPE_1__* IndexScanDesc ;
typedef int BlockNumber ;
typedef int BTScanPosItem ;
typedef TYPE_2__* BTScanOpaque ;


 int Assert (int ) ;
 int BTScanPosData ;
 int BTScanPosInvalidate (TYPE_4__) ;
 scalar_t__ BTScanPosIsPinned (TYPE_4__) ;
 int BTScanPosIsValid (TYPE_4__) ;
 int BTScanPosUnpinIfPinned (TYPE_4__) ;
 int IncrBufferRefCount (int ) ;
 int InvalidBlockNumber ;
 scalar_t__ ScanDirectionIsForward (int ) ;
 int _bt_drop_lock_and_maybe_pin (TYPE_1__*,TYPE_4__*) ;
 int _bt_killitems (TYPE_1__*) ;
 int _bt_parallel_seize (TYPE_1__*,int *) ;
 int _bt_readnextpage (TYPE_1__*,int ,int ) ;
 int * items ;
 int memcpy (TYPE_3__*,TYPE_4__*,scalar_t__) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static bool
_bt_steppage(IndexScanDesc scan, ScanDirection dir)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 BlockNumber blkno = InvalidBlockNumber;
 bool status = 1;

 Assert(BTScanPosIsValid(so->currPos));


 if (so->numKilled > 0)
  _bt_killitems(scan);





 if (so->markItemIndex >= 0)
 {

  if (BTScanPosIsPinned(so->currPos))
   IncrBufferRefCount(so->currPos.buf);
  memcpy(&so->markPos, &so->currPos,
      offsetof(BTScanPosData, items[1]) +
      so->currPos.lastItem * sizeof(BTScanPosItem));
  if (so->markTuples)
   memcpy(so->markTuples, so->currTuples,
       so->currPos.nextTupleOffset);
  so->markPos.itemIndex = so->markItemIndex;
  so->markItemIndex = -1;
 }

 if (ScanDirectionIsForward(dir))
 {

  if (scan->parallel_scan != ((void*)0))
  {




   status = _bt_parallel_seize(scan, &blkno);
   if (!status)
   {

    BTScanPosUnpinIfPinned(so->currPos);
    BTScanPosInvalidate(so->currPos);
    return 0;
   }
  }
  else
  {

   blkno = so->currPos.nextPage;
  }


  so->currPos.moreLeft = 1;


  BTScanPosUnpinIfPinned(so->currPos);
 }
 else
 {

  so->currPos.moreRight = 1;

  if (scan->parallel_scan != ((void*)0))
  {




   status = _bt_parallel_seize(scan, &blkno);
   BTScanPosUnpinIfPinned(so->currPos);
   if (!status)
   {
    BTScanPosInvalidate(so->currPos);
    return 0;
   }
  }
  else
  {

   blkno = so->currPos.currPage;
  }
 }

 if (!_bt_readnextpage(scan, blkno, dir))
  return 0;


 _bt_drop_lock_and_maybe_pin(scan, &so->currPos);

 return 1;
}
