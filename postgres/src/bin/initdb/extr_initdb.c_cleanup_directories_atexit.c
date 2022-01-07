
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ found_existing_pgdata ;
 scalar_t__ found_existing_xlogdir ;
 scalar_t__ made_new_pgdata ;
 scalar_t__ made_new_xlogdir ;
 int noclean ;
 int pg_data ;
 int pg_log_error (char*) ;
 int pg_log_info (char*,int ) ;
 int rmtree (int ,int) ;
 scalar_t__ success ;
 int xlog_dir ;

__attribute__((used)) static void
cleanup_directories_atexit(void)
{
 if (success)
  return;

 if (!noclean)
 {
  if (made_new_pgdata)
  {
   pg_log_info("removing data directory \"%s\"", pg_data);
   if (!rmtree(pg_data, 1))
    pg_log_error("failed to remove data directory");
  }
  else if (found_existing_pgdata)
  {
   pg_log_info("removing contents of data directory \"%s\"",
      pg_data);
   if (!rmtree(pg_data, 0))
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
  if (made_new_pgdata || found_existing_pgdata)
   pg_log_info("data directory \"%s\" not removed at user's request",
      pg_data);

  if (made_new_xlogdir || found_existing_xlogdir)
   pg_log_info("WAL directory \"%s\" not removed at user's request",
      xlog_dir);
 }
}
