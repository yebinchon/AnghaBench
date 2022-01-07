
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int buf; } ;
struct TYPE_5__ {int xs_want_itup; int indexRelation; int xs_snapshot; } ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* BTScanPos ;


 int BUFFER_LOCK_UNLOCK ;
 int InvalidBuffer ;
 scalar_t__ IsMVCCSnapshot (int ) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int ReleaseBuffer (int ) ;

__attribute__((used)) static void
_bt_drop_lock_and_maybe_pin(IndexScanDesc scan, BTScanPos sp)
{
 LockBuffer(sp->buf, BUFFER_LOCK_UNLOCK);

 if (IsMVCCSnapshot(scan->xs_snapshot) &&
  RelationNeedsWAL(scan->indexRelation) &&
  !scan->xs_want_itup)
 {
  ReleaseBuffer(sp->buf);
  sp->buf = InvalidBuffer;
 }
}
