
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ nextTupleOffset; TYPE_3__* items; } ;
struct TYPE_12__ {TYPE_1__ currPos; scalar_t__ currTuples; } ;
struct TYPE_11__ {scalar_t__ tupleOffset; int indexOffset; int heapTid; } ;
struct TYPE_10__ {int t_tid; } ;
typedef int Size ;
typedef int OffsetNumber ;
typedef TYPE_2__* IndexTuple ;
typedef TYPE_3__ BTScanPosItem ;
typedef TYPE_4__* BTScanOpaque ;


 int IndexTupleSize (TYPE_2__*) ;
 scalar_t__ MAXALIGN (int ) ;
 int memcpy (scalar_t__,TYPE_2__*,int ) ;

__attribute__((used)) static void
_bt_saveitem(BTScanOpaque so, int itemIndex,
    OffsetNumber offnum, IndexTuple itup)
{
 BTScanPosItem *currItem = &so->currPos.items[itemIndex];

 currItem->heapTid = itup->t_tid;
 currItem->indexOffset = offnum;
 if (so->currTuples)
 {
  Size itupsz = IndexTupleSize(itup);

  currItem->tupleOffset = so->currPos.nextTupleOffset;
  memcpy(so->currTuples + so->currPos.nextTupleOffset, itup, itupsz);
  so->currPos.nextTupleOffset += MAXALIGN(itupsz);
 }
}
