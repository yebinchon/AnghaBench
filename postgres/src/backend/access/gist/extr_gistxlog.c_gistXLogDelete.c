
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ntodelete; int latestRemovedXid; } ;
typedef TYPE_1__ gistxlogDelete ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
typedef int OffsetNumber ;
typedef int Buffer ;


 int REGBUF_STANDARD ;
 int RM_GIST_ID ;
 int SizeOfGistxlogDelete ;
 int XLOG_GIST_DELETE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int) ;

XLogRecPtr
gistXLogDelete(Buffer buffer, OffsetNumber *todelete, int ntodelete,
      TransactionId latestRemovedXid)
{
 gistxlogDelete xlrec;
 XLogRecPtr recptr;

 xlrec.latestRemovedXid = latestRemovedXid;
 xlrec.ntodelete = ntodelete;

 XLogBeginInsert();
 XLogRegisterData((char *) &xlrec, SizeOfGistxlogDelete);





 XLogRegisterData((char *) todelete, ntodelete * sizeof(OffsetNumber));

 XLogRegisterBuffer(0, buffer, REGBUF_STANDARD);

 recptr = XLogInsert(RM_GIST_ID, XLOG_GIST_DELETE);

 return recptr;
}
