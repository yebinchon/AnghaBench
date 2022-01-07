
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int path ;
typedef int DIR ;


 int * AllocateDir (char*) ;
 int ERROR ;
 int FreeDir (int *) ;
 int INFO ;
 int MAXPGPATH ;
 struct dirent* ReadDirExtended (int *,char*,int ) ;
 int S_ISDIR (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*,char const*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static void
ReorderBufferCleanupSerializedTXNs(const char *slotname)
{
 DIR *spill_dir;
 struct dirent *spill_de;
 struct stat statbuf;
 char path[MAXPGPATH * 2 + 12];

 sprintf(path, "pg_replslot/%s", slotname);


 if (lstat(path, &statbuf) == 0 && !S_ISDIR(statbuf.st_mode))
  return;

 spill_dir = AllocateDir(path);
 while ((spill_de = ReadDirExtended(spill_dir, path, INFO)) != ((void*)0))
 {

  if (strncmp(spill_de->d_name, "xid", 3) == 0)
  {
   snprintf(path, sizeof(path),
      "pg_replslot/%s/%s", slotname,
      spill_de->d_name);

   if (unlink(path) != 0)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not remove file \"%s\" during removal of pg_replslot/%s/xid*: %m",
        path, slotname)));
  }
 }
 FreeDir(spill_dir);
}
