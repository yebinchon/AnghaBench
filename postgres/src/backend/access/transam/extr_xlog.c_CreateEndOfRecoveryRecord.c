
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int PrevTimeLineID; void* ThisTimeLineID; int end_time; } ;
typedef TYPE_1__ xl_end_of_recovery ;
typedef scalar_t__ pg_time_t ;
typedef int XLogRecPtr ;
struct TYPE_6__ {void* minRecoveryPointTLI; int minRecoveryPoint; scalar_t__ time; } ;
struct TYPE_5__ {int PrevTimeLineID; } ;


 TYPE_3__* ControlFile ;
 int ControlFileLock ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int GetCurrentTimestamp () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int LocalSetXLogInsertAllowed () ;
 int LocalXLogInsertAllowed ;
 int RM_XLOG_ID ;
 int RecoveryInProgress () ;
 int START_CRIT_SECTION () ;
 void* ThisTimeLineID ;
 int UpdateControlFile () ;
 int WALInsertLockAcquireExclusive () ;
 int WALInsertLockRelease () ;
 int XLOG_END_OF_RECOVERY ;
 int XLogBeginInsert () ;
 TYPE_2__* XLogCtl ;
 int XLogFlush (int ) ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int elog (int ,char*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
CreateEndOfRecoveryRecord(void)
{
 xl_end_of_recovery xlrec;
 XLogRecPtr recptr;


 if (!RecoveryInProgress())
  elog(ERROR, "can only be used to end recovery");

 xlrec.end_time = GetCurrentTimestamp();

 WALInsertLockAcquireExclusive();
 xlrec.ThisTimeLineID = ThisTimeLineID;
 xlrec.PrevTimeLineID = XLogCtl->PrevTimeLineID;
 WALInsertLockRelease();

 LocalSetXLogInsertAllowed();

 START_CRIT_SECTION();

 XLogBeginInsert();
 XLogRegisterData((char *) &xlrec, sizeof(xl_end_of_recovery));
 recptr = XLogInsert(RM_XLOG_ID, XLOG_END_OF_RECOVERY);

 XLogFlush(recptr);





 LWLockAcquire(ControlFileLock, LW_EXCLUSIVE);
 ControlFile->time = (pg_time_t) time(((void*)0));
 ControlFile->minRecoveryPoint = recptr;
 ControlFile->minRecoveryPointTLI = ThisTimeLineID;
 UpdateControlFile();
 LWLockRelease(ControlFileLock);

 END_CRIT_SECTION();

 LocalXLogInsertAllowed = -1;
}
