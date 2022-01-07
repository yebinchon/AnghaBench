
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int MAXPGPATH ;
 char* PSQLRC ;
 char* SYSPSQLRC ;
 int exit (int ) ;
 int expand_tilde (char**) ;
 scalar_t__ find_my_exec (char*,char*) ;
 int get_etc_path (char*,char*) ;
 scalar_t__ get_home_path (char*) ;
 char* getenv (char*) ;
 int pg_log_fatal (char*) ;
 int process_psqlrc_file (char*) ;
 char* pstrdup (char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
process_psqlrc(char *argv0)
{
 char home[MAXPGPATH];
 char rc_file[MAXPGPATH];
 char my_exec_path[MAXPGPATH];
 char etc_path[MAXPGPATH];
 char *envrc = getenv("PSQLRC");

 if (find_my_exec(argv0, my_exec_path) < 0)
 {
  pg_log_fatal("could not find own program executable");
  exit(EXIT_FAILURE);
 }

 get_etc_path(my_exec_path, etc_path);

 snprintf(rc_file, MAXPGPATH, "%s/%s", etc_path, SYSPSQLRC);
 process_psqlrc_file(rc_file);

 if (envrc != ((void*)0) && strlen(envrc) > 0)
 {

  char *envrc_alloc = pstrdup(envrc);

  expand_tilde(&envrc_alloc);
  process_psqlrc_file(envrc_alloc);
 }
 else if (get_home_path(home))
 {
  snprintf(rc_file, MAXPGPATH, "%s/%s", home, PSQLRC);
  process_psqlrc_file(rc_file);
 }
}
