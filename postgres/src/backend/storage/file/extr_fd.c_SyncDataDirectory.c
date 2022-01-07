
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int DEBUG1 ;
 int LOG ;
 scalar_t__ S_ISLNK (int ) ;
 int datadir_fsync_fname ;
 int enableFsync ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ pgwin32_is_junction (char*) ;
 int pre_sync_fname ;
 int walkdir (char*,int ,int,int ) ;

void
SyncDataDirectory(void)
{
 bool xlog_is_symlink;


 if (!enableFsync)
  return;





 xlog_is_symlink = 0;


 {
  struct stat st;

  if (lstat("pg_wal", &st) < 0)
   ereport(LOG,
     (errcode_for_file_access(),
      errmsg("could not stat file \"%s\": %m",
       "pg_wal")));
  else if (S_ISLNK(st.st_mode))
   xlog_is_symlink = 1;
 }
 walkdir(".", datadir_fsync_fname, 0, LOG);
 if (xlog_is_symlink)
  walkdir("pg_wal", datadir_fsync_fname, 0, LOG);
 walkdir("pg_tblspc", datadir_fsync_fname, 1, LOG);
}
