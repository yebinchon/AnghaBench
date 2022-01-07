
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int full_path ;


 int MAXPGPATH ;
 int PG_BACKEND_VERSIONSTR ;
 int backend_exec ;
 scalar_t__ bin_path ;
 int canonicalize_path (scalar_t__) ;
 int exit (int) ;
 scalar_t__ find_my_exec (char const*,char*) ;
 int find_other_exec (char const*,char*,int ,int ) ;
 int get_share_path (int ,scalar_t__) ;
 int is_absolute_path (scalar_t__) ;
 char* last_dir_separator (scalar_t__) ;
 int pg_log_error (char*,...) ;
 scalar_t__ pg_malloc (int) ;
 int progname ;
 scalar_t__ share_path ;
 int strcpy (scalar_t__,int ) ;
 int strlcpy (char*,int ,int) ;

void
setup_bin_paths(const char *argv0)
{
 int ret;

 if ((ret = find_other_exec(argv0, "postgres", PG_BACKEND_VERSIONSTR,
          backend_exec)) < 0)
 {
  char full_path[MAXPGPATH];

  if (find_my_exec(argv0, full_path) < 0)
   strlcpy(full_path, progname, sizeof(full_path));

  if (ret == -1)
   pg_log_error("The program \"postgres\" is needed by %s but was not found in the\n"
       "same directory as \"%s\".\n"
       "Check your installation.",
       progname, full_path);
  else
   pg_log_error("The program \"postgres\" was found by \"%s\"\n"
       "but was not the same version as %s.\n"
       "Check your installation.",
       full_path, progname);
  exit(1);
 }


 strcpy(bin_path, backend_exec);
 *last_dir_separator(bin_path) = '\0';
 canonicalize_path(bin_path);

 if (!share_path)
 {
  share_path = pg_malloc(MAXPGPATH);
  get_share_path(backend_exec, share_path);
 }
 else if (!is_absolute_path(share_path))
 {
  pg_log_error("input file location must be an absolute path");
  exit(1);
 }

 canonicalize_path(share_path);
}
