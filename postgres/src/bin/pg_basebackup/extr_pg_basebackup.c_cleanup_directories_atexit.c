
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int basedir ;
 int checksum_failure ;
 scalar_t__ found_existing_pgdata ;
 scalar_t__ found_existing_xlogdir ;
 scalar_t__ found_tablespace_dirs ;
 scalar_t__ in_log_streamer ;
 scalar_t__ made_new_pgdata ;
 scalar_t__ made_new_xlogdir ;
 scalar_t__ made_tablespace_dirs ;
 int noclean ;
 int pg_log_error (char*) ;
 int pg_log_info (char*,...) ;
 int rmtree (int ,int) ;
 scalar_t__ success ;
 int xlog_dir ;

__attribute__((used)) static void
cleanup_directories_atexit(void)
{
 if (success || in_log_streamer)
  return;

 if (!noclean && !checksum_failure)
 {
  if (made_new_pgdata)
  {
   pg_log_info("removing data directory \"%s\"", basedir);
   if (!rmtree(basedir, 1))
    pg_log_error("failed to remove data directory");
  }
  else if (found_existing_pgdata)
  {
   pg_log_info("removing contents of data directory \"%s\"", basedir);
   if (!rmtree(basedir, 0))
    pg_log_error("failed to remove contents of data directory");
  }

  if (made_new_xlogdir)
  {
   pg_log_info("removing WAL directory \"%s\"", xlog_dir);
   if (!rmtree(xlog_dir, 1))
    pg_log_error("failed to remove WAL directory");
  }
  else if (found_existing_xlogdir)
  {
   pg_log_info("removing contents of WAL directory \"%s\"", xlog_dir);
   if (!rmtree(xlog_dir, 0))
    pg_log_error("failed to remove contents of WAL directory");
  }
 }
 else
 {
  if ((made_new_pgdata || found_existing_pgdata) && !checksum_failure)
   pg_log_info("data directory \"%s\" not removed at user's request", basedir);

  if (made_new_xlogdir || found_existing_xlogdir)
   pg_log_info("WAL directory \"%s\" not removed at user's request", xlog_dir);
 }

 if ((made_tablespace_dirs || found_tablespace_dirs) && !checksum_failure)
  pg_log_info("changes to tablespace directories will not be undone");
}
