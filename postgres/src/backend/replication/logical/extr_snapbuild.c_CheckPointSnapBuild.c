
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
typedef int DIR ;


 int * AllocateDir (char*) ;
 int DEBUG1 ;
 int FreeDir (int *) ;
 scalar_t__ GetRedoRecPtr () ;
 scalar_t__ InvalidXLogRecPtr ;
 int LOG ;
 int MAXPGPATH ;
 struct dirent* ReadDir (int *,char*) ;
 scalar_t__ ReplicationSlotsComputeLogicalRestartLSN () ;
 int S_ISREG (int ) ;
 int elog (int ,char*,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int snprintf (char*,int,char*,char*) ;
 int sscanf (char*,char*,int*,int*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ unlink (char*) ;

void
CheckPointSnapBuild(void)
{
 XLogRecPtr cutoff;
 XLogRecPtr redo;
 DIR *snap_dir;
 struct dirent *snap_de;
 char path[MAXPGPATH + 21];






 redo = GetRedoRecPtr();


 cutoff = ReplicationSlotsComputeLogicalRestartLSN();


 if (redo < cutoff)
  cutoff = redo;

 snap_dir = AllocateDir("pg_logical/snapshots");
 while ((snap_de = ReadDir(snap_dir, "pg_logical/snapshots")) != ((void*)0))
 {
  uint32 hi;
  uint32 lo;
  XLogRecPtr lsn;
  struct stat statbuf;

  if (strcmp(snap_de->d_name, ".") == 0 ||
   strcmp(snap_de->d_name, "..") == 0)
   continue;

  snprintf(path, sizeof(path), "pg_logical/snapshots/%s", snap_de->d_name);

  if (lstat(path, &statbuf) == 0 && !S_ISREG(statbuf.st_mode))
  {
   elog(DEBUG1, "only regular files expected: %s", path);
   continue;
  }
  if (sscanf(snap_de->d_name, "%X-%X.snap", &hi, &lo) != 2)
  {
   ereport(LOG,
     (errmsg("could not parse file name \"%s\"", path)));
   continue;
  }

  lsn = ((uint64) hi) << 32 | lo;


  if (lsn < cutoff || cutoff == InvalidXLogRecPtr)
  {
   elog(DEBUG1, "removing snapbuild snapshot %s", path);






   if (unlink(path) < 0)
   {
    ereport(LOG,
      (errcode_for_file_access(),
       errmsg("could not remove file \"%s\": %m",
        path)));
    continue;
   }
  }
 }
 FreeDir(snap_dir);
}
