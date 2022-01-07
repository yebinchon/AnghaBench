
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ roident; int remote_lsn; } ;
typedef TYPE_1__ uint32 ;
typedef TYPE_1__ pg_crc32c ;
typedef int magic ;
typedef int disk_state ;
typedef int crc ;
typedef int XLogRecPtr ;
struct TYPE_14__ {scalar_t__ roident; int lock; int local_lsn; int remote_lsn; } ;
typedef TYPE_1__ ReplicationStateOnDisk ;
typedef TYPE_4__ ReplicationState ;


 int COMP_CRC32C (TYPE_1__,TYPE_1__*,int) ;
 scalar_t__ CloseTransientFile (int) ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOSPC ;
 int FIN_CRC32C (TYPE_1__) ;
 int INIT_CRC32C (TYPE_1__) ;
 scalar_t__ InvalidRepOriginId ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_SHARED ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int OpenTransientFile (char const*,int) ;
 int PANIC ;
 int PG_BINARY ;
 TYPE_1__ REPLICATION_STATE_MAGIC ;
 int * ReplicationOriginLock ;
 int XLogFlush (int ) ;
 int durable_rename (char const*,char const*,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;
 int max_replication_slots ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_4__* replication_states ;
 scalar_t__ unlink (char const*) ;
 int write (int,TYPE_1__*,int) ;

void
CheckPointReplicationOrigin(void)
{
 const char *tmppath = "pg_logical/replorigin_checkpoint.tmp";
 const char *path = "pg_logical/replorigin_checkpoint";
 int tmpfd;
 int i;
 uint32 magic = REPLICATION_STATE_MAGIC;
 pg_crc32c crc;

 if (max_replication_slots == 0)
  return;

 INIT_CRC32C(crc);


 if (unlink(tmppath) < 0 && errno != ENOENT)
  ereport(PANIC,
    (errcode_for_file_access(),
     errmsg("could not remove file \"%s\": %m",
      tmppath)));





 tmpfd = OpenTransientFile(tmppath,
         O_CREAT | O_EXCL | O_WRONLY | PG_BINARY);
 if (tmpfd < 0)
  ereport(PANIC,
    (errcode_for_file_access(),
     errmsg("could not create file \"%s\": %m",
      tmppath)));


 errno = 0;
 if ((write(tmpfd, &magic, sizeof(magic))) != sizeof(magic))
 {

  if (errno == 0)
   errno = ENOSPC;
  ereport(PANIC,
    (errcode_for_file_access(),
     errmsg("could not write to file \"%s\": %m",
      tmppath)));
 }
 COMP_CRC32C(crc, &magic, sizeof(magic));


 LWLockAcquire(ReplicationOriginLock, LW_SHARED);


 for (i = 0; i < max_replication_slots; i++)
 {
  ReplicationStateOnDisk disk_state;
  ReplicationState *curstate = &replication_states[i];
  XLogRecPtr local_lsn;

  if (curstate->roident == InvalidRepOriginId)
   continue;


  memset(&disk_state, 0, sizeof(disk_state));

  LWLockAcquire(&curstate->lock, LW_SHARED);

  disk_state.roident = curstate->roident;

  disk_state.remote_lsn = curstate->remote_lsn;
  local_lsn = curstate->local_lsn;

  LWLockRelease(&curstate->lock);


  XLogFlush(local_lsn);

  errno = 0;
  if ((write(tmpfd, &disk_state, sizeof(disk_state))) !=
   sizeof(disk_state))
  {

   if (errno == 0)
    errno = ENOSPC;
   ereport(PANIC,
     (errcode_for_file_access(),
      errmsg("could not write to file \"%s\": %m",
       tmppath)));
  }

  COMP_CRC32C(crc, &disk_state, sizeof(disk_state));
 }

 LWLockRelease(ReplicationOriginLock);


 FIN_CRC32C(crc);
 errno = 0;
 if ((write(tmpfd, &crc, sizeof(crc))) != sizeof(crc))
 {

  if (errno == 0)
   errno = ENOSPC;
  ereport(PANIC,
    (errcode_for_file_access(),
     errmsg("could not write to file \"%s\": %m",
      tmppath)));
 }

 if (CloseTransientFile(tmpfd) != 0)
  ereport(PANIC,
    (errcode_for_file_access(),
     errmsg("could not close file \"%s\": %m",
      tmppath)));


 durable_rename(tmppath, path, PANIC);
}
