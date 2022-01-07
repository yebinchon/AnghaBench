
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* endTruncMemb; void* startTruncMemb; void* endTruncOff; void* startTruncOff; int oldestMultiDB; } ;
typedef TYPE_1__ xl_multixact_truncate ;
typedef int XLogRecPtr ;
typedef int Oid ;
typedef void* MultiXactOffset ;
typedef void* MultiXactId ;


 int RM_MULTIXACT_ID ;
 int SizeOfMultiXactTruncate ;
 int XLOG_MULTIXACT_TRUNCATE_ID ;
 int XLogBeginInsert () ;
 int XLogFlush (int ) ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int ) ;

__attribute__((used)) static void
WriteMTruncateXlogRec(Oid oldestMultiDB,
       MultiXactId startTruncOff, MultiXactId endTruncOff,
       MultiXactOffset startTruncMemb, MultiXactOffset endTruncMemb)
{
 XLogRecPtr recptr;
 xl_multixact_truncate xlrec;

 xlrec.oldestMultiDB = oldestMultiDB;

 xlrec.startTruncOff = startTruncOff;
 xlrec.endTruncOff = endTruncOff;

 xlrec.startTruncMemb = startTruncMemb;
 xlrec.endTruncMemb = endTruncMemb;

 XLogBeginInsert();
 XLogRegisterData((char *) (&xlrec), SizeOfMultiXactTruncate);
 recptr = XLogInsert(RM_MULTIXACT_ID, XLOG_MULTIXACT_TRUNCATE_ID);
 XLogFlush(recptr);
}
