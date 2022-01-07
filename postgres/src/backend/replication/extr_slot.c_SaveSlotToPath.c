
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cp ;
struct TYPE_7__ {int dirty; int just_dirtied; int io_in_progress_lock; int mutex; int data; } ;
struct TYPE_6__ {int checksum; int slotdata; int length; int version; int magic; } ;
typedef int ReplicationSlotPersistentData ;
typedef TYPE_1__ ReplicationSlotOnDisk ;
typedef TYPE_2__ ReplicationSlot ;


 int COMP_CRC32C (int ,char*,int ) ;
 scalar_t__ CloseTransientFile (int) ;
 int END_CRIT_SECTION () ;
 int ENOSPC ;
 int FIN_CRC32C (int ) ;
 int INIT_CRC32C (int ) ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int MAXPGPATH ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int OpenTransientFile (char*,int) ;
 int PG_BINARY ;
 int ReplicationSlotOnDiskV2Size ;
 int SLOT_MAGIC ;
 int SLOT_VERSION ;
 int START_CRIT_SECTION () ;
 int SnapBuildOnDiskChecksummedSize ;
 int SnapBuildOnDiskNotChecksummedSize ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WAIT_EVENT_REPLICATION_SLOT_SYNC ;
 int WAIT_EVENT_REPLICATION_SLOT_WRITE ;
 int ereport (int,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*,...) ;
 int errno ;
 int fsync_fname (char const*,int) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ pg_fsync (int) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 scalar_t__ rename (char*,char*) ;
 int sprintf (char*,char*,char const*) ;
 int write (int,TYPE_1__*,int) ;

__attribute__((used)) static void
SaveSlotToPath(ReplicationSlot *slot, const char *dir, int elevel)
{
 char tmppath[MAXPGPATH];
 char path[MAXPGPATH];
 int fd;
 ReplicationSlotOnDisk cp;
 bool was_dirty;


 SpinLockAcquire(&slot->mutex);
 was_dirty = slot->dirty;
 slot->just_dirtied = 0;
 SpinLockRelease(&slot->mutex);


 if (!was_dirty)
  return;

 LWLockAcquire(&slot->io_in_progress_lock, LW_EXCLUSIVE);


 memset(&cp, 0, sizeof(ReplicationSlotOnDisk));

 sprintf(tmppath, "%s/state.tmp", dir);
 sprintf(path, "%s/state", dir);

 fd = OpenTransientFile(tmppath, O_CREAT | O_EXCL | O_WRONLY | PG_BINARY);
 if (fd < 0)
 {
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not create file \"%s\": %m",
      tmppath)));
  return;
 }

 cp.magic = SLOT_MAGIC;
 INIT_CRC32C(cp.checksum);
 cp.version = SLOT_VERSION;
 cp.length = ReplicationSlotOnDiskV2Size;

 SpinLockAcquire(&slot->mutex);

 memcpy(&cp.slotdata, &slot->data, sizeof(ReplicationSlotPersistentData));

 SpinLockRelease(&slot->mutex);

 COMP_CRC32C(cp.checksum,
    (char *) (&cp) + SnapBuildOnDiskNotChecksummedSize,
    SnapBuildOnDiskChecksummedSize);
 FIN_CRC32C(cp.checksum);

 errno = 0;
 pgstat_report_wait_start(WAIT_EVENT_REPLICATION_SLOT_WRITE);
 if ((write(fd, &cp, sizeof(cp))) != sizeof(cp))
 {
  int save_errno = errno;

  pgstat_report_wait_end();
  CloseTransientFile(fd);


  errno = save_errno ? save_errno : ENOSPC;
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not write to file \"%s\": %m",
      tmppath)));
  return;
 }
 pgstat_report_wait_end();


 pgstat_report_wait_start(WAIT_EVENT_REPLICATION_SLOT_SYNC);
 if (pg_fsync(fd) != 0)
 {
  int save_errno = errno;

  pgstat_report_wait_end();
  CloseTransientFile(fd);
  errno = save_errno;
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not fsync file \"%s\": %m",
      tmppath)));
  return;
 }
 pgstat_report_wait_end();

 if (CloseTransientFile(fd) != 0)
 {
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not close file \"%s\": %m",
      tmppath)));
  return;
 }


 if (rename(tmppath, path) != 0)
 {
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not rename file \"%s\" to \"%s\": %m",
      tmppath, path)));
  return;
 }




 START_CRIT_SECTION();

 fsync_fname(path, 0);
 fsync_fname(dir, 1);
 fsync_fname("pg_replslot", 1);

 END_CRIT_SECTION();





 SpinLockAcquire(&slot->mutex);
 if (!slot->just_dirtied)
  slot->dirty = 0;
 SpinLockRelease(&slot->mutex);

 LWLockRelease(&slot->io_in_progress_lock);
}
