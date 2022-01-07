
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ itemIndex; int lastItem; scalar_t__ nextTupleOffset; int buf; } ;
struct TYPE_13__ {scalar_t__ markItemIndex; scalar_t__ numKilled; TYPE_3__ currPos; TYPE_3__ markPos; TYPE_3__* markTuples; TYPE_3__* currTuples; scalar_t__ numArrayKeys; } ;
struct TYPE_12__ {int opaque; } ;
typedef TYPE_1__* IndexScanDesc ;
typedef int BTScanPosItem ;
typedef TYPE_2__* BTScanOpaque ;


 int BTScanPosData ;
 int BTScanPosInvalidate (TYPE_3__) ;
 scalar_t__ BTScanPosIsPinned (TYPE_3__) ;
 scalar_t__ BTScanPosIsValid (TYPE_3__) ;
 int BTScanPosUnpinIfPinned (TYPE_3__) ;
 int IncrBufferRefCount (int ) ;
 int _bt_killitems (TYPE_1__*) ;
 int _bt_restore_array_keys (TYPE_1__*) ;
 int * items ;
 int memcpy (TYPE_3__*,TYPE_3__*,scalar_t__) ;
 scalar_t__ offsetof (int ,int ) ;

void
btrestrpos(IndexScanDesc scan)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;


 if (so->numArrayKeys)
  _bt_restore_array_keys(scan);

 if (so->markItemIndex >= 0)
 {







  so->currPos.itemIndex = so->markItemIndex;
 }
 else
 {






  if (BTScanPosIsValid(so->currPos))
  {

   if (so->numKilled > 0)
    _bt_killitems(scan);
   BTScanPosUnpinIfPinned(so->currPos);
  }

  if (BTScanPosIsValid(so->markPos))
  {

   if (BTScanPosIsPinned(so->markPos))
    IncrBufferRefCount(so->markPos.buf);
   memcpy(&so->currPos, &so->markPos,
       offsetof(BTScanPosData, items[1]) +
       so->markPos.lastItem * sizeof(BTScanPosItem));
   if (so->currTuples)
    memcpy(so->currTuples, so->markTuples,
        so->markPos.nextTupleOffset);
  }
  else
   BTScanPosInvalidate(so->currPos);
 }
}
