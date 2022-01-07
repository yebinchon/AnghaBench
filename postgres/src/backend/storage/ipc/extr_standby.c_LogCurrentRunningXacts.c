
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xcnt; int subxcnt; int latestCompletedXid; int oldestRunningXid; int nextXid; scalar_t__ subxid_overflow; } ;
typedef TYPE_1__ xl_running_xacts ;
typedef int uint32 ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_5__ {int xcnt; int subxcnt; int nextXid; int latestCompletedXid; int oldestRunningXid; scalar_t__ subxid_overflow; scalar_t__ xids; } ;
typedef TYPE_2__* RunningTransactions ;


 int DEBUG2 ;
 int MinSizeOfXactRunningXacts ;
 int RM_STANDBY_ID ;
 int XLOG_MARK_UNIMPORTANT ;
 int XLOG_RUNNING_XACTS ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int XLogSetAsyncXactLSN (int) ;
 int XLogSetRecordFlags (int ) ;
 int elog (int ,char*,int,int,int ,int ,int ,int ,...) ;
 int trace_recovery (int ) ;

__attribute__((used)) static XLogRecPtr
LogCurrentRunningXacts(RunningTransactions CurrRunningXacts)
{
 xl_running_xacts xlrec;
 XLogRecPtr recptr;

 xlrec.xcnt = CurrRunningXacts->xcnt;
 xlrec.subxcnt = CurrRunningXacts->subxcnt;
 xlrec.subxid_overflow = CurrRunningXacts->subxid_overflow;
 xlrec.nextXid = CurrRunningXacts->nextXid;
 xlrec.oldestRunningXid = CurrRunningXacts->oldestRunningXid;
 xlrec.latestCompletedXid = CurrRunningXacts->latestCompletedXid;


 XLogBeginInsert();
 XLogSetRecordFlags(XLOG_MARK_UNIMPORTANT);
 XLogRegisterData((char *) (&xlrec), MinSizeOfXactRunningXacts);


 if (xlrec.xcnt > 0)
  XLogRegisterData((char *) CurrRunningXacts->xids,
       (xlrec.xcnt + xlrec.subxcnt) * sizeof(TransactionId));

 recptr = XLogInsert(RM_STANDBY_ID, XLOG_RUNNING_XACTS);

 if (CurrRunningXacts->subxid_overflow)
  elog(trace_recovery(DEBUG2),
    "snapshot of %u running transactions overflowed (lsn %X/%X oldest xid %u latest complete %u next xid %u)",
    CurrRunningXacts->xcnt,
    (uint32) (recptr >> 32), (uint32) recptr,
    CurrRunningXacts->oldestRunningXid,
    CurrRunningXacts->latestCompletedXid,
    CurrRunningXacts->nextXid);
 else
  elog(trace_recovery(DEBUG2),
    "snapshot of %u+%u running transaction ids (lsn %X/%X oldest xid %u latest complete %u next xid %u)",
    CurrRunningXacts->xcnt, CurrRunningXacts->subxcnt,
    (uint32) (recptr >> 32), (uint32) recptr,
    CurrRunningXacts->oldestRunningXid,
    CurrRunningXacts->latestCompletedXid,
    CurrRunningXacts->nextXid);
 XLogSetAsyncXactLSN(recptr);

 return recptr;
}
