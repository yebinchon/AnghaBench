
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {size_t itemIndex; TYPE_2__* items; int buf; } ;
struct TYPE_13__ {scalar_t__ currTuples; TYPE_9__ currPos; } ;
struct TYPE_12__ {scalar_t__ tupleOffset; int heapTid; } ;
struct TYPE_11__ {scalar_t__ xs_itup; scalar_t__ xs_want_itup; int xs_heaptid; int xs_snapshot; int opaque; int indexRelation; } ;
typedef scalar_t__ ScanDirection ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_1__* IndexScanDesc ;
typedef int Buffer ;
typedef TYPE_2__ BTScanPosItem ;
typedef TYPE_3__* BTScanOpaque ;
typedef scalar_t__ BTPageOpaque ;


 int Assert (int ) ;
 int BTScanPosInvalidate (TYPE_9__) ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int ERROR ;
 int LockBuffer (int ,int ) ;
 scalar_t__ P_FIRSTDATAKEY (scalar_t__) ;
 int P_ISLEAF (scalar_t__) ;
 int P_RIGHTMOST (scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PredicateLockPage (int ,int ,int ) ;
 int PredicateLockRelation (int ,int ) ;
 scalar_t__ ScanDirectionIsBackward (scalar_t__) ;
 scalar_t__ ScanDirectionIsForward (scalar_t__) ;
 int _bt_drop_lock_and_maybe_pin (TYPE_1__*,TYPE_9__*) ;
 int _bt_get_endpoint (int ,int ,scalar_t__,int ) ;
 int _bt_initialize_more_data (TYPE_3__*,scalar_t__) ;
 int _bt_readpage (TYPE_1__*,scalar_t__,scalar_t__) ;
 int _bt_steppage (TYPE_1__*,scalar_t__) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static bool
_bt_endpoint(IndexScanDesc scan, ScanDirection dir)
{
 Relation rel = scan->indexRelation;
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 Buffer buf;
 Page page;
 BTPageOpaque opaque;
 OffsetNumber start;
 BTScanPosItem *currItem;






 buf = _bt_get_endpoint(rel, 0, ScanDirectionIsBackward(dir), scan->xs_snapshot);

 if (!BufferIsValid(buf))
 {




  PredicateLockRelation(rel, scan->xs_snapshot);
  BTScanPosInvalidate(so->currPos);
  return 0;
 }

 PredicateLockPage(rel, BufferGetBlockNumber(buf), scan->xs_snapshot);
 page = BufferGetPage(buf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 Assert(P_ISLEAF(opaque));

 if (ScanDirectionIsForward(dir))
 {



  start = P_FIRSTDATAKEY(opaque);
 }
 else if (ScanDirectionIsBackward(dir))
 {
  Assert(P_RIGHTMOST(opaque));

  start = PageGetMaxOffsetNumber(page);
 }
 else
 {
  elog(ERROR, "invalid scan direction: %d", (int) dir);
  start = 0;
 }


 so->currPos.buf = buf;

 _bt_initialize_more_data(so, dir);




 if (!_bt_readpage(scan, dir, start))
 {




  LockBuffer(so->currPos.buf, BUFFER_LOCK_UNLOCK);
  if (!_bt_steppage(scan, dir))
   return 0;
 }
 else
 {

  _bt_drop_lock_and_maybe_pin(scan, &so->currPos);
 }


 currItem = &so->currPos.items[so->currPos.itemIndex];
 scan->xs_heaptid = currItem->heapTid;
 if (scan->xs_want_itup)
  scan->xs_itup = (IndexTuple) (so->currTuples + currItem->tupleOffset);

 return 1;
}
