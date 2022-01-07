
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int cmd ;


 int EXE ;
 int MAXPGPATH ;
 int canonicalize_path (char*) ;
 scalar_t__ find_my_exec (char const*,char*) ;
 char* last_dir_separator (char*) ;
 int pipe_read_line (char*,char*,int) ;
 int snprintf (char*,int,char*,char const*,...) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char*) ;
 scalar_t__ validate_exec (char*) ;

int
find_other_exec(const char *argv0, const char *target,
    const char *versionstr, char *retpath)
{
 char cmd[MAXPGPATH];
 char line[MAXPGPATH];

 if (find_my_exec(argv0, retpath) < 0)
  return -1;


 *last_dir_separator(retpath) = '\0';
 canonicalize_path(retpath);


 snprintf(retpath + strlen(retpath), MAXPGPATH - strlen(retpath),
    "/%s%s", target, EXE);

 if (validate_exec(retpath) != 0)
  return -1;

 snprintf(cmd, sizeof(cmd), "\"%s\" -V", retpath);

 if (!pipe_read_line(cmd, line, sizeof(line)))
  return -1;

 if (strcmp(line, versionstr) != 0)
  return -2;

 return 0;
}
