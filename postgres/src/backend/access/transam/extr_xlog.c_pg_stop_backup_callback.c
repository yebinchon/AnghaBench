
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ exclusiveBackupState; } ;
struct TYPE_4__ {TYPE_1__ Insert; } ;
typedef int Datum ;


 int Assert (int) ;
 int DatumGetBool (int ) ;
 scalar_t__ EXCLUSIVE_BACKUP_IN_PROGRESS ;
 scalar_t__ EXCLUSIVE_BACKUP_STOPPING ;
 int WALInsertLockAcquireExclusive () ;
 int WALInsertLockRelease () ;
 TYPE_2__* XLogCtl ;

__attribute__((used)) static void
pg_stop_backup_callback(int code, Datum arg)
{
 bool exclusive = DatumGetBool(arg);


 WALInsertLockAcquireExclusive();
 if (exclusive)
 {
  Assert(XLogCtl->Insert.exclusiveBackupState == EXCLUSIVE_BACKUP_STOPPING);
  XLogCtl->Insert.exclusiveBackupState = EXCLUSIVE_BACKUP_IN_PROGRESS;
 }
 WALInsertLockRelease();
}
