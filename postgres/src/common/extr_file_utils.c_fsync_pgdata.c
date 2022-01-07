
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int MAXPGPATH ;
 int MINIMUM_VERSION_FOR_PG_WAL ;
 scalar_t__ S_ISLNK (int ) ;
 int fsync_fname ;
 scalar_t__ lstat (char*,struct stat*) ;
 int pg_log_error (char*,char*) ;
 scalar_t__ pgwin32_is_junction (char*) ;
 int pre_sync_fname ;
 int snprintf (char*,int,char*,char const*,...) ;
 int walkdir (char const*,int ,int) ;

void
fsync_pgdata(const char *pg_data,
    int serverVersion)
{
 bool xlog_is_symlink;
 char pg_wal[MAXPGPATH];
 char pg_tblspc[MAXPGPATH];


 snprintf(pg_wal, MAXPGPATH, "%s/%s", pg_data,
    serverVersion < MINIMUM_VERSION_FOR_PG_WAL ? "pg_xlog" : "pg_wal");
 snprintf(pg_tblspc, MAXPGPATH, "%s/pg_tblspc", pg_data);





 xlog_is_symlink = 0;


 {
  struct stat st;

  if (lstat(pg_wal, &st) < 0)
   pg_log_error("could not stat file \"%s\": %m", pg_wal);
  else if (S_ISLNK(st.st_mode))
   xlog_is_symlink = 1;
 }
 walkdir(pg_data, fsync_fname, 0);
 if (xlog_is_symlink)
  walkdir(pg_wal, fsync_fname, 0);
 walkdir(pg_tblspc, fsync_fname, 1);
}
