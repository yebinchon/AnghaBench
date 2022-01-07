
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int path ;
typedef int DIR ;


 int * AllocateDir (char*) ;
 int DEBUG1 ;
 int FreeDir (int *) ;
 int MAXPGPATH ;
 struct dirent* ReadDir (int *,char*) ;
 int ReplicationSlotsComputeRequiredLSN () ;
 int ReplicationSlotsComputeRequiredXmin (int) ;
 int RestoreSlotFromDisk (char*) ;
 int S_ISDIR (int ) ;
 int WARNING ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 int fsync_fname (char*,int) ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ max_replication_slots ;
 scalar_t__ pg_str_endswith (char*,char*) ;
 int rmtree (char*,int) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

void
StartupReplicationSlots(void)
{
 DIR *replication_dir;
 struct dirent *replication_de;

 elog(DEBUG1, "starting up replication slots");


 replication_dir = AllocateDir("pg_replslot");
 while ((replication_de = ReadDir(replication_dir, "pg_replslot")) != ((void*)0))
 {
  struct stat statbuf;
  char path[MAXPGPATH + 12];

  if (strcmp(replication_de->d_name, ".") == 0 ||
   strcmp(replication_de->d_name, "..") == 0)
   continue;

  snprintf(path, sizeof(path), "pg_replslot/%s", replication_de->d_name);


  if (lstat(path, &statbuf) == 0 && !S_ISDIR(statbuf.st_mode))
   continue;


  if (pg_str_endswith(replication_de->d_name, ".tmp"))
  {
   if (!rmtree(path, 1))
   {
    ereport(WARNING,
      (errmsg("could not remove directory \"%s\"",
        path)));
    continue;
   }
   fsync_fname("pg_replslot", 1);
   continue;
  }


  RestoreSlotFromDisk(replication_de->d_name);
 }
 FreeDir(replication_dir);


 if (max_replication_slots <= 0)
  return;


 ReplicationSlotsComputeRequiredXmin(0);
 ReplicationSlotsComputeRequiredLSN();
}
