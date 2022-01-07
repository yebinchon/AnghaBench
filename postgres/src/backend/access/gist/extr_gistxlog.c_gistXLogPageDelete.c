
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int downlinkOffset; int deleteXid; } ;
typedef TYPE_1__ gistxlogPageDelete ;
typedef int XLogRecPtr ;
typedef int OffsetNumber ;
typedef int FullTransactionId ;
typedef int Buffer ;


 int REGBUF_STANDARD ;
 int RM_GIST_ID ;
 int SizeOfGistxlogPageDelete ;
 int XLOG_GIST_PAGE_DELETE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,int ,int ) ;
 int XLogRegisterData (char*,int ) ;

XLogRecPtr
gistXLogPageDelete(Buffer buffer, FullTransactionId xid,
       Buffer parentBuffer, OffsetNumber downlinkOffset)
{
 gistxlogPageDelete xlrec;
 XLogRecPtr recptr;

 xlrec.deleteXid = xid;
 xlrec.downlinkOffset = downlinkOffset;

 XLogBeginInsert();
 XLogRegisterData((char *) &xlrec, SizeOfGistxlogPageDelete);

 XLogRegisterBuffer(0, buffer, REGBUF_STANDARD);
 XLogRegisterBuffer(1, parentBuffer, REGBUF_STANDARD);

 recptr = XLogInsert(RM_GIST_ID, XLOG_GIST_PAGE_DELETE);

 return recptr;
}
