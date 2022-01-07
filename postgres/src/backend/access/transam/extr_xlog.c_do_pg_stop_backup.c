
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
struct stat {int st_size; } ;
typedef int strfbuf ;
typedef int startpoint ;
typedef scalar_t__ pg_time_t ;
typedef int XLogSegNo ;
typedef scalar_t__ XLogRecPtr ;
typedef int TimeLineID ;
struct TYPE_6__ {scalar_t__ minRecoveryPoint; int minRecoveryPointTLI; } ;
struct TYPE_4__ {scalar_t__ exclusiveBackupState; scalar_t__ nonExclusiveBackups; int forcePageWrites; } ;
struct TYPE_5__ {scalar_t__ lastFpwDisableRecPtr; int info_lck; TYPE_1__ Insert; } ;
typedef int FILE ;
typedef int Datum ;


 int * AllocateFile (char*,char*) ;
 int Assert (int) ;
 char* BACKUP_LABEL_FILE ;
 int BackupHistoryFileName (char*,int,int ,scalar_t__,int ) ;
 int BackupHistoryFilePath (char*,int,int ,scalar_t__,int ) ;
 scalar_t__ BoolGetDatum (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int CleanupBackupHistory () ;
 TYPE_3__* ControlFile ;
 int ControlFileLock ;
 int DEBUG1 ;
 scalar_t__ ENOENT ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ EXCLUSIVE_BACKUP_IN_PROGRESS ;
 scalar_t__ EXCLUSIVE_BACKUP_NONE ;
 scalar_t__ EXCLUSIVE_BACKUP_STOPPING ;
 scalar_t__ FreeFile (int *) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int MAXFNAMELEN ;
 int MAXPGPATH ;
 int NOTICE ;
 int PG_END_ENSURE_ERROR_CLEANUP (int ,int ) ;
 int PG_ENSURE_ERROR_CLEANUP (int ,int ) ;
 int RM_XLOG_ID ;
 int RecoveryInProgress () ;
 int RequestXLogSwitch (int) ;
 int SESSION_BACKUP_NONE ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 char* TABLESPACE_MAP ;
 int ThisTimeLineID ;
 int WALInsertLockAcquireExclusive () ;
 int WALInsertLockRelease () ;
 int WARNING ;
 int XLByteToPrevSeg (scalar_t__,int ,int ) ;
 int XLByteToSeg (scalar_t__,int ,int ) ;
 int XLOG_BACKUP_END ;
 scalar_t__ XLogArchiveIsBusy (char*) ;
 scalar_t__ XLogArchivingActive () ;
 scalar_t__ XLogArchivingAlways () ;
 int XLogBeginInsert () ;
 TYPE_2__* XLogCtl ;
 int XLogFileName (char*,int,int ,int ) ;
 scalar_t__ XLogInsert (int ,int ) ;
 int XLogIsNeeded () ;
 int XLogRegisterData (char*,int) ;
 int durable_unlink (char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 scalar_t__ errno ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fflush (int *) ;
 int fprintf (int *,char*,...) ;
 int fread (char*,int,int,int *) ;
 int log_timezone ;
 char* palloc (int) ;
 int pg_localtime (scalar_t__*,int ) ;
 int pg_stop_backup_callback ;
 int pg_strftime (char*,int,char*,int ) ;
 int pg_usleep (long) ;
 int sessionBackupState ;
 int sscanf (char*,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strstr (char*,char*) ;
 scalar_t__ time (int *) ;
 int wal_segment_size ;

XLogRecPtr
do_pg_stop_backup(char *labelfile, bool waitforarchive, TimeLineID *stoptli_p)
{
 bool exclusive = (labelfile == ((void*)0));
 bool backup_started_in_recovery = 0;
 XLogRecPtr startpoint;
 XLogRecPtr stoppoint;
 TimeLineID stoptli;
 pg_time_t stamp_time;
 char strfbuf[128];
 char histfilepath[MAXPGPATH];
 char startxlogfilename[MAXFNAMELEN];
 char stopxlogfilename[MAXFNAMELEN];
 char lastxlogfilename[MAXFNAMELEN];
 char histfilename[MAXFNAMELEN];
 char backupfrom[20];
 XLogSegNo _logSegNo;
 FILE *lfp;
 FILE *fp;
 char ch;
 int seconds_before_warning;
 int waits = 0;
 bool reported_waiting = 0;
 char *remaining;
 char *ptr;
 uint32 hi,
    lo;

 backup_started_in_recovery = RecoveryInProgress();




 if (backup_started_in_recovery && exclusive)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("recovery is in progress"),
     errhint("WAL control functions cannot be executed during recovery.")));





 if (!backup_started_in_recovery && !XLogIsNeeded())
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("WAL level not sufficient for making an online backup"),
     errhint("wal_level must be set to \"replica\" or \"logical\" at server start.")));

 if (exclusive)
 {





  WALInsertLockAcquireExclusive();
  if (XLogCtl->Insert.exclusiveBackupState != EXCLUSIVE_BACKUP_IN_PROGRESS)
  {
   WALInsertLockRelease();
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("exclusive backup not in progress")));
  }
  XLogCtl->Insert.exclusiveBackupState = EXCLUSIVE_BACKUP_STOPPING;
  WALInsertLockRelease();





  PG_ENSURE_ERROR_CLEANUP(pg_stop_backup_callback, (Datum) BoolGetDatum(exclusive));
  {



   struct stat statbuf;
   int r;

   if (stat(BACKUP_LABEL_FILE, &statbuf))
   {

    if (errno != ENOENT)
     ereport(ERROR,
       (errcode_for_file_access(),
        errmsg("could not stat file \"%s\": %m",
         BACKUP_LABEL_FILE)));
    ereport(ERROR,
      (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
       errmsg("a backup is not in progress")));
   }

   lfp = AllocateFile(BACKUP_LABEL_FILE, "r");
   if (!lfp)
   {
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not read file \"%s\": %m",
        BACKUP_LABEL_FILE)));
   }
   labelfile = palloc(statbuf.st_size + 1);
   r = fread(labelfile, statbuf.st_size, 1, lfp);
   labelfile[statbuf.st_size] = '\0';




   if (r != 1 || ferror(lfp) || FreeFile(lfp))
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not read file \"%s\": %m",
        BACKUP_LABEL_FILE)));
   durable_unlink(BACKUP_LABEL_FILE, ERROR);





   durable_unlink(TABLESPACE_MAP, DEBUG1);
  }
  PG_END_ENSURE_ERROR_CLEANUP(pg_stop_backup_callback, (Datum) BoolGetDatum(exclusive));
 }
 WALInsertLockAcquireExclusive();
 if (exclusive)
 {
  XLogCtl->Insert.exclusiveBackupState = EXCLUSIVE_BACKUP_NONE;
 }
 else
 {






  Assert(XLogCtl->Insert.nonExclusiveBackups > 0);
  XLogCtl->Insert.nonExclusiveBackups--;
 }

 if (XLogCtl->Insert.exclusiveBackupState == EXCLUSIVE_BACKUP_NONE &&
  XLogCtl->Insert.nonExclusiveBackups == 0)
 {
  XLogCtl->Insert.forcePageWrites = 0;
 }
 sessionBackupState = SESSION_BACKUP_NONE;

 WALInsertLockRelease();





 if (sscanf(labelfile, "START WAL LOCATION: %X/%X (file %24s)%c",
      &hi, &lo, startxlogfilename,
      &ch) != 4 || ch != '\n')
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("invalid data in file \"%s\"", BACKUP_LABEL_FILE)));
 startpoint = ((uint64) hi) << 32 | lo;
 remaining = strchr(labelfile, '\n') + 1;






 ptr = strstr(remaining, "BACKUP FROM:");
 if (!ptr || sscanf(ptr, "BACKUP FROM: %19s\n", backupfrom) != 1)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("invalid data in file \"%s\"", BACKUP_LABEL_FILE)));
 if (strcmp(backupfrom, "standby") == 0 && !backup_started_in_recovery)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("the standby was promoted during online backup"),
     errhint("This means that the backup being taken is corrupt "
       "and should not be used. "
       "Try taking another online backup.")));
 if (backup_started_in_recovery)
 {
  XLogRecPtr recptr;





  SpinLockAcquire(&XLogCtl->info_lck);
  recptr = XLogCtl->lastFpwDisableRecPtr;
  SpinLockRelease(&XLogCtl->info_lck);

  if (startpoint <= recptr)
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("WAL generated with full_page_writes=off was replayed "
       "during online backup"),
      errhint("This means that the backup being taken on the standby "
        "is corrupt and should not be used. "
        "Enable full_page_writes and run CHECKPOINT on the master, "
        "and then try an online backup again.")));


  LWLockAcquire(ControlFileLock, LW_SHARED);
  stoppoint = ControlFile->minRecoveryPoint;
  stoptli = ControlFile->minRecoveryPointTLI;
  LWLockRelease(ControlFileLock);
 }
 else
 {



  XLogBeginInsert();
  XLogRegisterData((char *) (&startpoint), sizeof(startpoint));
  stoppoint = XLogInsert(RM_XLOG_ID, XLOG_BACKUP_END);
  stoptli = ThisTimeLineID;





  RequestXLogSwitch(0);

  XLByteToPrevSeg(stoppoint, _logSegNo, wal_segment_size);
  XLogFileName(stopxlogfilename, stoptli, _logSegNo, wal_segment_size);


  stamp_time = (pg_time_t) time(((void*)0));
  pg_strftime(strfbuf, sizeof(strfbuf),
     "%Y-%m-%d %H:%M:%S %Z",
     pg_localtime(&stamp_time, log_timezone));




  XLByteToSeg(startpoint, _logSegNo, wal_segment_size);
  BackupHistoryFilePath(histfilepath, stoptli, _logSegNo,
         startpoint, wal_segment_size);
  fp = AllocateFile(histfilepath, "w");
  if (!fp)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not create file \"%s\": %m",
       histfilepath)));
  fprintf(fp, "START WAL LOCATION: %X/%X (file %s)\n",
    (uint32) (startpoint >> 32), (uint32) startpoint, startxlogfilename);
  fprintf(fp, "STOP WAL LOCATION: %X/%X (file %s)\n",
    (uint32) (stoppoint >> 32), (uint32) stoppoint, stopxlogfilename);





  fprintf(fp, "%s", remaining);
  fprintf(fp, "STOP TIME: %s\n", strfbuf);
  fprintf(fp, "STOP TIMELINE: %u\n", stoptli);
  if (fflush(fp) || ferror(fp) || FreeFile(fp))
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not write file \"%s\": %m",
       histfilepath)));







  CleanupBackupHistory();
 }
 if (waitforarchive &&
  ((!backup_started_in_recovery && XLogArchivingActive()) ||
   (backup_started_in_recovery && XLogArchivingAlways())))
 {
  XLByteToPrevSeg(stoppoint, _logSegNo, wal_segment_size);
  XLogFileName(lastxlogfilename, stoptli, _logSegNo, wal_segment_size);

  XLByteToSeg(startpoint, _logSegNo, wal_segment_size);
  BackupHistoryFileName(histfilename, stoptli, _logSegNo,
         startpoint, wal_segment_size);

  seconds_before_warning = 60;
  waits = 0;

  while (XLogArchiveIsBusy(lastxlogfilename) ||
      XLogArchiveIsBusy(histfilename))
  {
   CHECK_FOR_INTERRUPTS();

   if (!reported_waiting && waits > 5)
   {
    ereport(NOTICE,
      (errmsg("base backup done, waiting for required WAL segments to be archived")));
    reported_waiting = 1;
   }

   pg_usleep(1000000L);

   if (++waits >= seconds_before_warning)
   {
    seconds_before_warning *= 2;
    ereport(WARNING,
      (errmsg("still waiting for all required WAL segments to be archived (%d seconds elapsed)",
        waits),
       errhint("Check that your archive_command is executing properly.  "
         "You can safely cancel this backup, "
         "but the database backup will not be usable without all the WAL segments.")));
   }
  }

  ereport(NOTICE,
    (errmsg("all required WAL segments have been archived")));
 }
 else if (waitforarchive)
  ereport(NOTICE,
    (errmsg("WAL archiving is not enabled; you must ensure that all required WAL segments are copied through other means to complete the backup")));




 if (stoptli_p)
  *stoptli_p = stoptli;
 return stoppoint;
}
