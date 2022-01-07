
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ restart_lsn; } ;
struct TYPE_4__ {int mutex; TYPE_1__ data; } ;


 TYPE_2__* MyReplicationSlot ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

__attribute__((used)) static XLogRecPtr
pg_physical_replication_slot_advance(XLogRecPtr moveto)
{
 XLogRecPtr startlsn = MyReplicationSlot->data.restart_lsn;
 XLogRecPtr retlsn = startlsn;

 if (startlsn < moveto)
 {
  SpinLockAcquire(&MyReplicationSlot->mutex);
  MyReplicationSlot->data.restart_lsn = moveto;
  SpinLockRelease(&MyReplicationSlot->mutex);
  retlsn = moveto;
 }

 return retlsn;
}
