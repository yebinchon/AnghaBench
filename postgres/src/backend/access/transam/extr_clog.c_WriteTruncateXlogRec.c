
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pageno; int oldestXactDb; int oldestXact; } ;
typedef TYPE_1__ xl_clog_truncate ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
typedef int Oid ;


 int CLOG_TRUNCATE ;
 int RM_CLOG_ID ;
 int XLogBeginInsert () ;
 int XLogFlush (int ) ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int) ;

__attribute__((used)) static void
WriteTruncateXlogRec(int pageno, TransactionId oldestXact, Oid oldestXactDb)
{
 XLogRecPtr recptr;
 xl_clog_truncate xlrec;

 xlrec.pageno = pageno;
 xlrec.oldestXact = oldestXact;
 xlrec.oldestXactDb = oldestXactDb;

 XLogBeginInsert();
 XLogRegisterData((char *) (&xlrec), sizeof(xl_clog_truncate));
 recptr = XLogInsert(RM_CLOG_ID, CLOG_TRUNCATE);
 XLogFlush(recptr);
}
