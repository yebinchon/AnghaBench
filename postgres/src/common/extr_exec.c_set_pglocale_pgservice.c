
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int env_path ;


 int LC_ALL ;
 int MAXPGPATH ;
 int PG_TEXTDOMAIN (char*) ;
 int bindtextdomain (char const*,char*) ;
 int canonicalize_path (char*) ;
 scalar_t__ find_my_exec (char const*,char*) ;
 int get_etc_path (char*,char*) ;
 int get_locale_path (char*,char*) ;
 int * getenv (char*) ;
 int putenv (char*) ;
 int setlocale (int ,char*) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strcmp (char const*,int ) ;
 char* strdup (char*) ;
 int textdomain (char const*) ;

void
set_pglocale_pgservice(const char *argv0, const char *app)
{
 char path[MAXPGPATH];
 char my_exec_path[MAXPGPATH];
 char env_path[MAXPGPATH + sizeof("PGSYSCONFDIR=")];

 char *dup_path;


 if (strcmp(app, PG_TEXTDOMAIN("postgres")) != 0)
 {
  setlocale(LC_ALL, "");
 }

 if (find_my_exec(argv0, my_exec_path) < 0)
  return;
 if (getenv("PGSYSCONFDIR") == ((void*)0))
 {
  get_etc_path(my_exec_path, path);


  snprintf(env_path, sizeof(env_path), "PGSYSCONFDIR=%s", path);
  canonicalize_path(env_path + 13);
  dup_path = strdup(env_path);
  if (dup_path)
   putenv(dup_path);
 }
}
