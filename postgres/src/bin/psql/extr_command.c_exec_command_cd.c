
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {char* pw_dir; } ;
typedef int backslashResult ;
typedef int PsqlScanState ;


 int EXIT_FAILURE ;
 int OT_NORMAL ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int _ (char*) ;
 int chdir (char*) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int free (char*) ;
 scalar_t__ geteuid () ;
 struct passwd* getpwuid (scalar_t__) ;
 int ignore_slash_options (int ) ;
 int pg_log_error (char*,...) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static backslashResult
exec_command_cd(PsqlScanState scan_state, bool active_branch, const char *cmd)
{
 bool success = 1;

 if (active_branch)
 {
  char *opt = psql_scan_slash_option(scan_state,
             OT_NORMAL, ((void*)0), 1);
  char *dir;

  if (opt)
   dir = opt;
  else
  {

   struct passwd *pw;
   uid_t user_id = geteuid();

   errno = 0;
   pw = getpwuid(user_id);
   if (!pw)
   {
    pg_log_error("could not get home directory for user ID %ld: %s",
        (long) user_id,
        errno ? strerror(errno) : _("user does not exist"));
    exit(EXIT_FAILURE);
   }
   dir = pw->pw_dir;
  }

  if (chdir(dir) == -1)
  {
   pg_log_error("\\%s: could not change directory to \"%s\": %m",
       cmd, dir);
   success = 0;
  }

  if (opt)
   free(opt);
 }
 else
  ignore_slash_options(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
