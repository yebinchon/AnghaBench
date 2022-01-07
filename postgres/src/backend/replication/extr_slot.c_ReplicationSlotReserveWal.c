
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ XLogSegNo ;
typedef void* XLogRecPtr ;
struct TYPE_5__ {scalar_t__ restart_lsn; } ;
struct TYPE_6__ {TYPE_1__ data; int mutex; } ;
typedef TYPE_2__ ReplicationSlot ;


 int Assert (int) ;
 void* GetRedoRecPtr () ;
 void* GetXLogInsertRecPtr () ;
 scalar_t__ InvalidXLogRecPtr ;
 void* LogStandbySnapshot () ;
 TYPE_2__* MyReplicationSlot ;
 int RecoveryInProgress () ;
 int ReplicationSlotsComputeRequiredLSN () ;
 scalar_t__ SlotIsLogical (TYPE_2__*) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int XLByteToSeg (scalar_t__,scalar_t__,int ) ;
 int XLogFlush (void*) ;
 scalar_t__ XLogGetLastRemovedSegno () ;
 int wal_segment_size ;

void
ReplicationSlotReserveWal(void)
{
 ReplicationSlot *slot = MyReplicationSlot;

 Assert(slot != ((void*)0));
 Assert(slot->data.restart_lsn == InvalidXLogRecPtr);
 while (1)
 {
  XLogSegNo segno;
  XLogRecPtr restart_lsn;
  if (!RecoveryInProgress() && SlotIsLogical(slot))
  {
   XLogRecPtr flushptr;


   restart_lsn = GetXLogInsertRecPtr();
   SpinLockAcquire(&slot->mutex);
   slot->data.restart_lsn = restart_lsn;
   SpinLockRelease(&slot->mutex);


   flushptr = LogStandbySnapshot();


   XLogFlush(flushptr);
  }
  else
  {
   restart_lsn = GetRedoRecPtr();
   SpinLockAcquire(&slot->mutex);
   slot->data.restart_lsn = restart_lsn;
   SpinLockRelease(&slot->mutex);
  }


  ReplicationSlotsComputeRequiredLSN();
  XLByteToSeg(slot->data.restart_lsn, segno, wal_segment_size);
  if (XLogGetLastRemovedSegno() < segno)
   break;
 }
}
