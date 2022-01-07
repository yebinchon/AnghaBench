
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nonExclusiveBackups; scalar_t__ exclusiveBackupState; int forcePageWrites; } ;
struct TYPE_4__ {TYPE_1__ Insert; } ;


 int Assert (int) ;
 scalar_t__ EXCLUSIVE_BACKUP_NONE ;
 scalar_t__ SESSION_BACKUP_NONE ;
 scalar_t__ SESSION_BACKUP_NON_EXCLUSIVE ;
 int WALInsertLockAcquireExclusive () ;
 int WALInsertLockRelease () ;
 TYPE_2__* XLogCtl ;
 scalar_t__ sessionBackupState ;

void
do_pg_abort_backup(void)
{




 if (sessionBackupState == SESSION_BACKUP_NONE)
  return;

 WALInsertLockAcquireExclusive();
 Assert(XLogCtl->Insert.nonExclusiveBackups > 0);
 Assert(sessionBackupState == SESSION_BACKUP_NON_EXCLUSIVE);
 XLogCtl->Insert.nonExclusiveBackups--;

 if (XLogCtl->Insert.exclusiveBackupState == EXCLUSIVE_BACKUP_NONE &&
  XLogCtl->Insert.nonExclusiveBackups == 0)
 {
  XLogCtl->Insert.forcePageWrites = 0;
 }
 WALInsertLockRelease();
}
