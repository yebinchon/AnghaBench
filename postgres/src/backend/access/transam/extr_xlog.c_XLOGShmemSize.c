
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int XLogRecPtr ;
typedef int XLogCtlData ;
typedef int WALInsertLockPadded ;
typedef int Size ;


 int Assert (int) ;
 int NUM_XLOGINSERT_LOCKS ;
 int PGC_POSTMASTER ;
 int PGC_S_OVERRIDE ;
 int SetConfigOption (char*,char*,int ,int ) ;
 int XLOGChooseNumBuffers () ;
 int XLOG_BLCKSZ ;
 int XLOGbuffers ;
 int add_size (int,int) ;
 int mul_size (int,int) ;
 int snprintf (char*,int,char*,int) ;

Size
XLOGShmemSize(void)
{
 Size size;







 if (XLOGbuffers == -1)
 {
  char buf[32];

  snprintf(buf, sizeof(buf), "%d", XLOGChooseNumBuffers());
  SetConfigOption("wal_buffers", buf, PGC_POSTMASTER, PGC_S_OVERRIDE);
 }
 Assert(XLOGbuffers > 0);


 size = sizeof(XLogCtlData);


 size = add_size(size, mul_size(sizeof(WALInsertLockPadded), NUM_XLOGINSERT_LOCKS + 1));

 size = add_size(size, mul_size(sizeof(XLogRecPtr), XLOGbuffers));

 size = add_size(size, XLOG_BLCKSZ);

 size = add_size(size, mul_size(XLOG_BLCKSZ, XLOGbuffers));







 return size;
}
