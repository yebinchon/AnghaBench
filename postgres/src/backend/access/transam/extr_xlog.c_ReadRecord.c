
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32 ;
typedef int XLogSegNo ;
typedef int XLogRecord ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_7__ {int ws_tli; } ;
struct TYPE_8__ {scalar_t__ EndRecPtr; int latestPageTLI; TYPE_1__ seg; int latestPagePtr; int ReadRecPtr; scalar_t__ private_data; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_9__ {int fetching_ckpt; int emode; int randAccess; } ;
typedef TYPE_3__ XLogPageReadPrivate ;
struct TYPE_10__ {scalar_t__ minRecoveryPoint; int minRecoveryPointTLI; int state; } ;


 scalar_t__ ArchiveRecoveryRequested ;
 int CheckForStandbyTrigger () ;
 int CheckRecoveryConsistency () ;
 TYPE_6__* ControlFile ;
 int ControlFileLock ;
 int DB_IN_ARCHIVE_RECOVERY ;
 int DEBUG1 ;
 scalar_t__ EndRecPtr ;
 int InArchiveRecovery ;
 scalar_t__ InvalidXLogRecPtr ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MAXFNAMELEN ;
 int ReadRecPtr ;
 int StandbyMode ;
 scalar_t__ StandbyModeRequested ;
 int ThisTimeLineID ;
 int UpdateControlFile () ;
 int XLByteToSeg (int ,int ,int ) ;
 int XLogFileName (char*,int ,int ,int ) ;
 int * XLogReadRecord (TYPE_2__*,scalar_t__,char**) ;
 int XLogSegmentOffset (int ,int ) ;
 int close (int) ;
 scalar_t__ currentSource ;
 int emode_for_corrupt_record (int,scalar_t__) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,char*,int ) ;
 int errmsg_internal (char*,...) ;
 int expectedTLEs ;
 int lastSourceFailed ;
 scalar_t__ minRecoveryPoint ;
 int minRecoveryPointTLI ;
 int readFile ;
 int tliInHistory (int ,int ) ;
 int updateMinRecoveryPoint ;
 int wal_segment_size ;

__attribute__((used)) static XLogRecord *
ReadRecord(XLogReaderState *xlogreader, XLogRecPtr RecPtr, int emode,
     bool fetching_ckpt)
{
 XLogRecord *record;
 XLogPageReadPrivate *private = (XLogPageReadPrivate *) xlogreader->private_data;


 private->fetching_ckpt = fetching_ckpt;
 private->emode = emode;
 private->randAccess = (RecPtr != InvalidXLogRecPtr);


 lastSourceFailed = 0;

 for (;;)
 {
  char *errormsg;

  record = XLogReadRecord(xlogreader, RecPtr, &errormsg);
  ReadRecPtr = xlogreader->ReadRecPtr;
  EndRecPtr = xlogreader->EndRecPtr;
  if (record == ((void*)0))
  {
   if (readFile >= 0)
   {
    close(readFile);
    readFile = -1;
   }







   if (errormsg)
    ereport(emode_for_corrupt_record(emode,
             RecPtr ? RecPtr : EndRecPtr),
      (errmsg_internal("%s", errormsg) ));
  }




  else if (!tliInHistory(xlogreader->latestPageTLI, expectedTLEs))
  {
   char fname[MAXFNAMELEN];
   XLogSegNo segno;
   int32 offset;

   XLByteToSeg(xlogreader->latestPagePtr, segno, wal_segment_size);
   offset = XLogSegmentOffset(xlogreader->latestPagePtr,
            wal_segment_size);
   XLogFileName(fname, xlogreader->seg.ws_tli, segno,
       wal_segment_size);
   ereport(emode_for_corrupt_record(emode,
            RecPtr ? RecPtr : EndRecPtr),
     (errmsg("unexpected timeline ID %u in log segment %s, offset %u",
       xlogreader->latestPageTLI,
       fname,
       offset)));
   record = ((void*)0);
  }

  if (record)
  {

   return record;
  }
  else
  {

   lastSourceFailed = 1;
   if (!InArchiveRecovery && ArchiveRecoveryRequested &&
    !fetching_ckpt)
   {
    ereport(DEBUG1,
      (errmsg_internal("reached end of WAL in pg_wal, entering archive recovery")));
    InArchiveRecovery = 1;
    if (StandbyModeRequested)
     StandbyMode = 1;


    LWLockAcquire(ControlFileLock, LW_EXCLUSIVE);
    ControlFile->state = DB_IN_ARCHIVE_RECOVERY;
    if (ControlFile->minRecoveryPoint < EndRecPtr)
    {
     ControlFile->minRecoveryPoint = EndRecPtr;
     ControlFile->minRecoveryPointTLI = ThisTimeLineID;
    }

    minRecoveryPoint = ControlFile->minRecoveryPoint;
    minRecoveryPointTLI = ControlFile->minRecoveryPointTLI;





    updateMinRecoveryPoint = 1;

    UpdateControlFile();
    LWLockRelease(ControlFileLock);

    CheckRecoveryConsistency();





    lastSourceFailed = 0;
    currentSource = 0;

    continue;
   }


   if (StandbyMode && !CheckForStandbyTrigger())
    continue;
   else
    return ((void*)0);
  }
 }
}
