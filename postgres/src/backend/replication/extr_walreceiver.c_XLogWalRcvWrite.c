
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int off_t ;
typedef int XLogRecPtr ;
struct TYPE_2__ {int Write; } ;
typedef scalar_t__ Size ;


 scalar_t__ ARCHIVE_MODE_ALWAYS ;
 scalar_t__ ENOSPC ;
 TYPE_1__ LogstreamResult ;
 int MAXFNAMELEN ;
 int PANIC ;
 int SEEK_SET ;
 int ThisTimeLineID ;
 int XLByteInSeg (int,int ,int) ;
 int XLByteToSeg (int,int ,int) ;
 int XLogArchiveForceDone (char*) ;
 scalar_t__ XLogArchiveMode ;
 int XLogArchiveNotify (char*) ;
 int XLogFileInit (int ,int*,int) ;
 int XLogFileName (char*,int ,int ,int) ;
 int XLogFileNameP (int ,int ) ;
 int XLogSegmentOffset (int,int) ;
 int XLogWalRcvFlush (int) ;
 scalar_t__ close (int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ,...) ;
 scalar_t__ errno ;
 scalar_t__ lseek (int,int ,int ) ;
 int recvFile ;
 int recvFileTLI ;
 int recvOff ;
 int recvSegNo ;
 int wal_segment_size ;
 int write (int,char*,int) ;

__attribute__((used)) static void
XLogWalRcvWrite(char *buf, Size nbytes, XLogRecPtr recptr)
{
 int startoff;
 int byteswritten;

 while (nbytes > 0)
 {
  int segbytes;

  if (recvFile < 0 || !XLByteInSeg(recptr, recvSegNo, wal_segment_size))
  {
   bool use_existent;





   if (recvFile >= 0)
   {
    char xlogfname[MAXFNAMELEN];

    XLogWalRcvFlush(0);






    if (close(recvFile) != 0)
     ereport(PANIC,
       (errcode_for_file_access(),
        errmsg("could not close log segment %s: %m",
         XLogFileNameP(recvFileTLI, recvSegNo))));





    XLogFileName(xlogfname, recvFileTLI, recvSegNo, wal_segment_size);
    if (XLogArchiveMode != ARCHIVE_MODE_ALWAYS)
     XLogArchiveForceDone(xlogfname);
    else
     XLogArchiveNotify(xlogfname);
   }
   recvFile = -1;


   XLByteToSeg(recptr, recvSegNo, wal_segment_size);
   use_existent = 1;
   recvFile = XLogFileInit(recvSegNo, &use_existent, 1);
   recvFileTLI = ThisTimeLineID;
   recvOff = 0;
  }


  startoff = XLogSegmentOffset(recptr, wal_segment_size);

  if (startoff + nbytes > wal_segment_size)
   segbytes = wal_segment_size - startoff;
  else
   segbytes = nbytes;


  if (recvOff != startoff)
  {
   if (lseek(recvFile, (off_t) startoff, SEEK_SET) < 0)
    ereport(PANIC,
      (errcode_for_file_access(),
       errmsg("could not seek in log segment %s to offset %u: %m",
        XLogFileNameP(recvFileTLI, recvSegNo),
        startoff)));
   recvOff = startoff;
  }


  errno = 0;

  byteswritten = write(recvFile, buf, segbytes);
  if (byteswritten <= 0)
  {

   if (errno == 0)
    errno = ENOSPC;
   ereport(PANIC,
     (errcode_for_file_access(),
      errmsg("could not write to log segment %s "
       "at offset %u, length %lu: %m",
       XLogFileNameP(recvFileTLI, recvSegNo),
       recvOff, (unsigned long) segbytes)));
  }


  recptr += byteswritten;

  recvOff += byteswritten;
  nbytes -= byteswritten;
  buf += byteswritten;

  LogstreamResult.Write = recptr;
 }
}
