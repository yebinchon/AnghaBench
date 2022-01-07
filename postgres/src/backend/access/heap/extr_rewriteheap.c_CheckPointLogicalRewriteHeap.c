
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int path ;
typedef scalar_t__ XLogRecPtr ;
typedef int TransactionId ;
typedef int Oid ;
typedef int DIR ;


 int * AllocateDir (char*) ;
 scalar_t__ CloseTransientFile (int) ;
 int DEBUG1 ;
 int ERROR ;
 int FreeDir (int *) ;
 scalar_t__ GetRedoRecPtr () ;
 scalar_t__ InvalidXLogRecPtr ;
 int LOGICAL_REWRITE_FORMAT ;
 int MAXPGPATH ;
 int O_RDWR ;
 int OpenTransientFile (char*,int) ;
 int PG_BINARY ;
 struct dirent* ReadDir (int *,char*) ;
 scalar_t__ ReplicationSlotsComputeLogicalRestartLSN () ;
 int S_ISREG (int ) ;
 int WAIT_EVENT_LOGICAL_REWRITE_CHECKPOINT_SYNC ;
 int data_sync_elevel (int ) ;
 int elog (int ,char*,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ pg_fsync (int) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int snprintf (char*,int,char*,char*) ;
 int sscanf (char*,int ,int *,int *,int*,int*,int *,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ unlink (char*) ;

void
CheckPointLogicalRewriteHeap(void)
{
 XLogRecPtr cutoff;
 XLogRecPtr redo;
 DIR *mappings_dir;
 struct dirent *mapping_de;
 char path[MAXPGPATH + 20];





 redo = GetRedoRecPtr();


 cutoff = ReplicationSlotsComputeLogicalRestartLSN();


 if (cutoff != InvalidXLogRecPtr && redo < cutoff)
  cutoff = redo;

 mappings_dir = AllocateDir("pg_logical/mappings");
 while ((mapping_de = ReadDir(mappings_dir, "pg_logical/mappings")) != ((void*)0))
 {
  struct stat statbuf;
  Oid dboid;
  Oid relid;
  XLogRecPtr lsn;
  TransactionId rewrite_xid;
  TransactionId create_xid;
  uint32 hi,
     lo;

  if (strcmp(mapping_de->d_name, ".") == 0 ||
   strcmp(mapping_de->d_name, "..") == 0)
   continue;

  snprintf(path, sizeof(path), "pg_logical/mappings/%s", mapping_de->d_name);
  if (lstat(path, &statbuf) == 0 && !S_ISREG(statbuf.st_mode))
   continue;


  if (strncmp(mapping_de->d_name, "map-", 4) != 0)
   continue;

  if (sscanf(mapping_de->d_name, LOGICAL_REWRITE_FORMAT,
       &dboid, &relid, &hi, &lo, &rewrite_xid, &create_xid) != 6)
   elog(ERROR, "could not parse filename \"%s\"", mapping_de->d_name);

  lsn = ((uint64) hi) << 32 | lo;

  if (lsn < cutoff || cutoff == InvalidXLogRecPtr)
  {
   elog(DEBUG1, "removing logical rewrite file \"%s\"", path);
   if (unlink(path) < 0)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not remove file \"%s\": %m", path)));
  }
  else
  {

   int fd = OpenTransientFile(path, O_RDWR | PG_BINARY);






   if (fd < 0)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not open file \"%s\": %m", path)));






   pgstat_report_wait_start(WAIT_EVENT_LOGICAL_REWRITE_CHECKPOINT_SYNC);
   if (pg_fsync(fd) != 0)
    ereport(data_sync_elevel(ERROR),
      (errcode_for_file_access(),
       errmsg("could not fsync file \"%s\": %m", path)));
   pgstat_report_wait_end();

   if (CloseTransientFile(fd) != 0)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not close file \"%s\": %m", path)));
  }
 }
 FreeDir(mappings_dir);
}
