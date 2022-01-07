
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ numKilled; int markItemIndex; char* currTuples; char* markTuples; scalar_t__ numberOfKeys; int markPos; scalar_t__ arrayKeyCount; int currPos; } ;
struct TYPE_6__ {int numberOfKeys; int keyData; scalar_t__ xs_want_itup; int opaque; } ;
typedef int ScanKeyData ;
typedef int ScanKey ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* BTScanOpaque ;


 int BLCKSZ ;
 int BTScanPosInvalidate (int ) ;
 scalar_t__ BTScanPosIsValid (int ) ;
 int BTScanPosUnpinIfPinned (int ) ;
 int _bt_killitems (TYPE_1__*) ;
 int _bt_preprocess_array_keys (TYPE_1__*) ;
 int memmove (int ,int ,int) ;
 scalar_t__ palloc (int) ;

void
btrescan(IndexScanDesc scan, ScanKey scankey, int nscankeys,
   ScanKey orderbys, int norderbys)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;


 if (BTScanPosIsValid(so->currPos))
 {

  if (so->numKilled > 0)
   _bt_killitems(scan);
  BTScanPosUnpinIfPinned(so->currPos);
  BTScanPosInvalidate(so->currPos);
 }

 so->markItemIndex = -1;
 so->arrayKeyCount = 0;
 BTScanPosUnpinIfPinned(so->markPos);
 BTScanPosInvalidate(so->markPos);
 if (scan->xs_want_itup && so->currTuples == ((void*)0))
 {
  so->currTuples = (char *) palloc(BLCKSZ * 2);
  so->markTuples = so->currTuples + BLCKSZ;
 }





 if (scankey && scan->numberOfKeys > 0)
  memmove(scan->keyData,
    scankey,
    scan->numberOfKeys * sizeof(ScanKeyData));
 so->numberOfKeys = 0;


 _bt_preprocess_array_keys(scan);
}
