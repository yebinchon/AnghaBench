
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XLogSegNo ;
typedef int XLogRecPtr ;
typedef int TimeLineID ;


 int Assert (int) ;
 int ERROR ;
 int FATAL ;
 int InArchiveRecovery ;
 int InvalidXLogRecPtr ;
 int LOG ;
 int MAXFNAMELEN ;
 int RECOVERY_SIGNAL_FILE ;
 int STANDBY_SIGNAL_FILE ;
 int ThisTimeLineID ;
 int UpdateMinRecoveryPoint (int ,int) ;
 int XLByteToPrevSeg (int ,scalar_t__,int ) ;
 int XLByteToSeg (int ,scalar_t__,int ) ;
 int XLogArchiveCleanup (char*) ;
 int XLogFileCopy (scalar_t__,int ,scalar_t__,int ) ;
 int XLogFileInit (scalar_t__,int*,int) ;
 int XLogFileName (char*,int ,scalar_t__,int ) ;
 int XLogFileNameP (int ,scalar_t__) ;
 int XLogSegmentOffset (int ,int ) ;
 scalar_t__ close (int) ;
 int durable_unlink (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,...) ;
 int readFile ;
 scalar_t__ recovery_signal_file_found ;
 scalar_t__ standby_signal_file_found ;
 int wal_segment_size ;

__attribute__((used)) static void
exitArchiveRecovery(TimeLineID endTLI, XLogRecPtr endOfLog)
{
 char xlogfname[MAXFNAMELEN];
 XLogSegNo endLogSegNo;
 XLogSegNo startLogSegNo;


 Assert(endTLI != ThisTimeLineID);




 InArchiveRecovery = 0;




 UpdateMinRecoveryPoint(InvalidXLogRecPtr, 1);





 if (readFile >= 0)
 {
  close(readFile);
  readFile = -1;
 }







 XLByteToPrevSeg(endOfLog, endLogSegNo, wal_segment_size);
 XLByteToSeg(endOfLog, startLogSegNo, wal_segment_size);







 if (endLogSegNo == startLogSegNo)
 {







  XLogFileCopy(endLogSegNo, endTLI, endLogSegNo,
      XLogSegmentOffset(endOfLog, wal_segment_size));
 }
 else
 {




  bool use_existent = 1;
  int fd;

  fd = XLogFileInit(startLogSegNo, &use_existent, 1);

  if (close(fd) != 0)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not close file \"%s\": %m",
       XLogFileNameP(ThisTimeLineID, startLogSegNo))));
 }





 XLogFileName(xlogfname, ThisTimeLineID, startLogSegNo, wal_segment_size);
 XLogArchiveCleanup(xlogfname);





 if (standby_signal_file_found)
  durable_unlink(STANDBY_SIGNAL_FILE, FATAL);

 if (recovery_signal_file_found)
  durable_unlink(RECOVERY_SIGNAL_FILE, FATAL);

 ereport(LOG,
   (errmsg("archive recovery complete")));
}
