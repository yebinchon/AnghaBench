
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ numKilled; int markItemIndex; struct TYPE_7__* currTuples; struct TYPE_7__* killedItems; int * arrayContext; struct TYPE_7__* keyData; int markPos; int currPos; } ;
struct TYPE_6__ {int opaque; } ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* BTScanOpaque ;


 scalar_t__ BTScanPosIsValid (int ) ;
 int BTScanPosUnpinIfPinned (int ) ;
 int MemoryContextDelete (int *) ;
 int _bt_killitems (TYPE_1__*) ;
 int pfree (TYPE_2__*) ;

void
btendscan(IndexScanDesc scan)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;


 if (BTScanPosIsValid(so->currPos))
 {

  if (so->numKilled > 0)
   _bt_killitems(scan);
  BTScanPosUnpinIfPinned(so->currPos);
 }

 so->markItemIndex = -1;
 BTScanPosUnpinIfPinned(so->markPos);




 if (so->keyData != ((void*)0))
  pfree(so->keyData);

 if (so->arrayContext != ((void*)0))
  MemoryContextDelete(so->arrayContext);
 if (so->killedItems != ((void*)0))
  pfree(so->killedItems);
 if (so->currTuples != ((void*)0))
  pfree(so->currTuples);

 pfree(so);
}
