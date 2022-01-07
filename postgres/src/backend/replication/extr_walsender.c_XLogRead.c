
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int off_t ;
typedef scalar_t__ XLogSegNo ;
typedef int XLogRecPtr ;
struct TYPE_6__ {int needreload; int mutex; } ;
typedef TYPE_1__ WalSnd ;
struct TYPE_7__ {scalar_t__ ws_segsize; } ;
typedef TYPE_2__ WALSegmentContext ;
struct TYPE_8__ {int ws_file; scalar_t__ ws_segno; scalar_t__ ws_off; int ws_tli; } ;
typedef scalar_t__ Size ;


 int BasicOpenFile (char*,int) ;
 int CheckXLogRemoved (scalar_t__,int ) ;
 scalar_t__ ENOENT ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int MAXPGPATH ;
 TYPE_1__* MyWalSnd ;
 int O_RDONLY ;
 int PG_BINARY ;
 int SEEK_SET ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int ThisTimeLineID ;
 int WAIT_EVENT_WAL_READ ;
 int XLByteInSeg (int,scalar_t__,scalar_t__) ;
 int XLByteToSeg (int,scalar_t__,scalar_t__) ;
 int XLogFileNameP (int ,scalar_t__) ;
 int XLogFilePath (char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ XLogSegmentOffset (int,scalar_t__) ;
 scalar_t__ am_cascading_walsender ;
 int close (int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*,...) ;
 scalar_t__ errno ;
 scalar_t__ lseek (int,int ,int ) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int read (int,char*,int) ;
 TYPE_3__* sendSeg ;
 int sendTimeLine ;
 scalar_t__ sendTimeLineIsHistoric ;
 int sendTimeLineNextTLI ;
 int sendTimeLineValidUpto ;

__attribute__((used)) static void
XLogRead(WALSegmentContext *segcxt, char *buf, XLogRecPtr startptr, Size count)
{
 char *p;
 XLogRecPtr recptr;
 Size nbytes;
 XLogSegNo segno;

retry:
 p = buf;
 recptr = startptr;
 nbytes = count;

 while (nbytes > 0)
 {
  uint32 startoff;
  int segbytes;
  int readbytes;

  startoff = XLogSegmentOffset(recptr, segcxt->ws_segsize);

  if (sendSeg->ws_file < 0 ||
   !XLByteInSeg(recptr, sendSeg->ws_segno, segcxt->ws_segsize))
  {
   char path[MAXPGPATH];


   if (sendSeg->ws_file >= 0)
    close(sendSeg->ws_file);

   XLByteToSeg(recptr, sendSeg->ws_segno, segcxt->ws_segsize);
   sendSeg->ws_tli = sendTimeLine;
   if (sendTimeLineIsHistoric)
   {
    XLogSegNo endSegNo;

    XLByteToSeg(sendTimeLineValidUpto, endSegNo, segcxt->ws_segsize);
    if (sendSeg->ws_segno == endSegNo)
     sendSeg->ws_tli = sendTimeLineNextTLI;
   }

   XLogFilePath(path, sendSeg->ws_tli, sendSeg->ws_segno, segcxt->ws_segsize);

   sendSeg->ws_file = BasicOpenFile(path, O_RDONLY | PG_BINARY);
   if (sendSeg->ws_file < 0)
   {





    if (errno == ENOENT)
     ereport(ERROR,
       (errcode_for_file_access(),
        errmsg("requested WAL segment %s has already been removed",
         XLogFileNameP(sendSeg->ws_tli, sendSeg->ws_segno))));
    else
     ereport(ERROR,
       (errcode_for_file_access(),
        errmsg("could not open file \"%s\": %m",
         path)));
   }
   sendSeg->ws_off = 0;
  }


  if (sendSeg->ws_off != startoff)
  {
   if (lseek(sendSeg->ws_file, (off_t) startoff, SEEK_SET) < 0)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not seek in log segment %s to offset %u: %m",
        XLogFileNameP(sendSeg->ws_tli, sendSeg->ws_segno),
        startoff)));
   sendSeg->ws_off = startoff;
  }


  if (nbytes > (segcxt->ws_segsize - startoff))
   segbytes = segcxt->ws_segsize - startoff;
  else
   segbytes = nbytes;

  pgstat_report_wait_start(WAIT_EVENT_WAL_READ);
  readbytes = read(sendSeg->ws_file, p, segbytes);
  pgstat_report_wait_end();
  if (readbytes < 0)
  {
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not read from log segment %s, offset %u, length %zu: %m",
       XLogFileNameP(sendSeg->ws_tli, sendSeg->ws_segno),
       sendSeg->ws_off, (Size) segbytes)));
  }
  else if (readbytes == 0)
  {
   ereport(ERROR,
     (errcode(ERRCODE_DATA_CORRUPTED),
      errmsg("could not read from log segment %s, offset %u: read %d of %zu",
       XLogFileNameP(sendSeg->ws_tli, sendSeg->ws_segno),
       sendSeg->ws_off, readbytes, (Size) segbytes)));
  }


  recptr += readbytes;

  sendSeg->ws_off += readbytes;
  nbytes -= readbytes;
  p += readbytes;
 }
 XLByteToSeg(startptr, segno, segcxt->ws_segsize);
 CheckXLogRemoved(segno, ThisTimeLineID);







 if (am_cascading_walsender)
 {
  WalSnd *walsnd = MyWalSnd;
  bool reload;

  SpinLockAcquire(&walsnd->mutex);
  reload = walsnd->needreload;
  walsnd->needreload = 0;
  SpinLockRelease(&walsnd->mutex);

  if (reload && sendSeg->ws_file >= 0)
  {
   close(sendSeg->ws_file);
   sendSeg->ws_file = -1;

   goto retry;
  }
 }
}
