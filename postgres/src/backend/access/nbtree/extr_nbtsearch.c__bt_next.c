
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ itemIndex; scalar_t__ lastItem; scalar_t__ firstItem; TYPE_3__* items; } ;
struct TYPE_10__ {scalar_t__ currTuples; TYPE_1__ currPos; } ;
struct TYPE_9__ {scalar_t__ tupleOffset; int heapTid; } ;
struct TYPE_8__ {scalar_t__ xs_itup; scalar_t__ xs_want_itup; int xs_heaptid; int opaque; } ;
typedef int ScanDirection ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_2__* IndexScanDesc ;
typedef TYPE_3__ BTScanPosItem ;
typedef TYPE_4__* BTScanOpaque ;


 scalar_t__ ScanDirectionIsForward (int ) ;
 int _bt_steppage (TYPE_2__*,int ) ;

bool
_bt_next(IndexScanDesc scan, ScanDirection dir)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 BTScanPosItem *currItem;





 if (ScanDirectionIsForward(dir))
 {
  if (++so->currPos.itemIndex > so->currPos.lastItem)
  {
   if (!_bt_steppage(scan, dir))
    return 0;
  }
 }
 else
 {
  if (--so->currPos.itemIndex < so->currPos.firstItem)
  {
   if (!_bt_steppage(scan, dir))
    return 0;
  }
 }


 currItem = &so->currPos.items[so->currPos.itemIndex];
 scan->xs_heaptid = currItem->heapTid;
 if (scan->xs_want_itup)
  scan->xs_itup = (IndexTuple) (so->currTuples + currItem->tupleOffset);

 return 1;
}
