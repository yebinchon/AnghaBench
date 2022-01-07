
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pageno; int oldestXid; } ;
typedef TYPE_1__ xl_commit_ts_truncate ;
typedef int TransactionId ;


 int COMMIT_TS_TRUNCATE ;
 int RM_COMMIT_TS_ID ;
 int SizeOfCommitTsTruncate ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int ) ;

__attribute__((used)) static void
WriteTruncateXlogRec(int pageno, TransactionId oldestXid)
{
 xl_commit_ts_truncate xlrec;

 xlrec.pageno = pageno;
 xlrec.oldestXid = oldestXid;

 XLogBeginInsert();
 XLogRegisterData((char *) (&xlrec), SizeOfCommitTsTruncate);
 (void) XLogInsert(RM_COMMIT_TS_ID, COMMIT_TS_TRUNCATE);
}
