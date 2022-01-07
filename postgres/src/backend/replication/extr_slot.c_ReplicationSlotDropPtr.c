
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ persistency; int name; } ;
struct TYPE_5__ {int in_use; int active_cv; scalar_t__ active_pid; int mutex; TYPE_1__ data; } ;
typedef TYPE_2__ ReplicationSlot ;


 int ConditionVariableBroadcast (int *) ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MAXPGPATH ;
 char* NameStr (int ) ;
 scalar_t__ RS_PERSISTENT ;
 int ReplicationSlotAllocationLock ;
 int ReplicationSlotControlLock ;
 int ReplicationSlotsComputeRequiredLSN () ;
 int ReplicationSlotsComputeRequiredXmin (int) ;
 int START_CRIT_SECTION () ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*,...) ;
 int fsync_fname (char*,int) ;
 scalar_t__ rename (char*,char*) ;
 int rmtree (char*,int) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static void
ReplicationSlotDropPtr(ReplicationSlot *slot)
{
 char path[MAXPGPATH];
 char tmppath[MAXPGPATH];






 LWLockAcquire(ReplicationSlotAllocationLock, LW_EXCLUSIVE);


 sprintf(path, "pg_replslot/%s", NameStr(slot->data.name));
 sprintf(tmppath, "pg_replslot/%s.tmp", NameStr(slot->data.name));
 if (rename(path, tmppath) == 0)
 {
  START_CRIT_SECTION();
  fsync_fname(tmppath, 1);
  fsync_fname("pg_replslot", 1);
  END_CRIT_SECTION();
 }
 else
 {
  bool fail_softly = slot->data.persistency != RS_PERSISTENT;

  SpinLockAcquire(&slot->mutex);
  slot->active_pid = 0;
  SpinLockRelease(&slot->mutex);


  ConditionVariableBroadcast(&slot->active_cv);

  ereport(fail_softly ? WARNING : ERROR,
    (errcode_for_file_access(),
     errmsg("could not rename file \"%s\" to \"%s\": %m",
      path, tmppath)));
 }
 LWLockAcquire(ReplicationSlotControlLock, LW_EXCLUSIVE);
 slot->active_pid = 0;
 slot->in_use = 0;
 LWLockRelease(ReplicationSlotControlLock);
 ConditionVariableBroadcast(&slot->active_cv);





 ReplicationSlotsComputeRequiredXmin(0);
 ReplicationSlotsComputeRequiredLSN();






 if (!rmtree(tmppath, 1))
  ereport(WARNING,
    (errmsg("could not remove directory \"%s\"", tmppath)));





 LWLockRelease(ReplicationSlotAllocationLock);
}
