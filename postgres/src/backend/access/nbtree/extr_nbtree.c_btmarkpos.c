
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int itemIndex; } ;
struct TYPE_7__ {int markItemIndex; scalar_t__ numArrayKeys; int markPos; TYPE_5__ currPos; } ;
struct TYPE_6__ {int opaque; } ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* BTScanOpaque ;


 int BTScanPosInvalidate (int ) ;
 scalar_t__ BTScanPosIsValid (TYPE_5__) ;
 int BTScanPosUnpinIfPinned (int ) ;
 int _bt_mark_array_keys (TYPE_1__*) ;

void
btmarkpos(IndexScanDesc scan)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;


 BTScanPosUnpinIfPinned(so->markPos);







 if (BTScanPosIsValid(so->currPos))
  so->markItemIndex = so->currPos.itemIndex;
 else
 {
  BTScanPosInvalidate(so->markPos);
  so->markItemIndex = -1;
 }


 if (so->numArrayKeys)
  _bt_mark_array_keys(scan);
}
