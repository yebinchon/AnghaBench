
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int full_path ;


 int MAXPGPATH ;
 int _ (char*) ;
 int exit (int) ;
 scalar_t__ find_my_exec (char const*,char*) ;
 int find_other_exec (char const*,char const*,char const*,char*) ;
 char* pg_malloc (int) ;
 char* progname ;
 int strlcpy (char*,char*,int) ;
 int write_stderr (int ,char const*,char*,char*) ;

__attribute__((used)) static char *
find_other_exec_or_die(const char *argv0, const char *target, const char *versionstr)
{
 int ret;
 char *found_path;

 found_path = pg_malloc(MAXPGPATH);

 if ((ret = find_other_exec(argv0, target, versionstr, found_path)) < 0)
 {
  char full_path[MAXPGPATH];

  if (find_my_exec(argv0, full_path) < 0)
   strlcpy(full_path, progname, sizeof(full_path));

  if (ret == -1)
   write_stderr(_("The program \"%s\" is needed by %s "
         "but was not found in the\n"
         "same directory as \"%s\".\n"
         "Check your installation.\n"),
       target, progname, full_path);
  else
   write_stderr(_("The program \"%s\" was found by \"%s\"\n"
         "but was not the same version as %s.\n"
         "Check your installation.\n"),
       target, full_path, progname);
  exit(1);
 }

 return found_path;
}
