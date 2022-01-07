
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_ino; int st_mode; } ;


 int S_ISDIR (int ) ;
 int fatal (char*,char const*) ;
 int opt_cgroup ;
 int parse_number (char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static void parse_cgroup(const char *path)
{
 if (path[0] == '@') {
  opt_cgroup = parse_number(path + 1);
  return;
 }

 struct stat st;

 if (stat(path, &st))
  fatal("stat failed: %s: %m\n", path);

 if (!S_ISDIR(st.st_mode))
  fatal("cgroup supposed to be a directory: %s\n", path);

 opt_cgroup = st.st_ino;
}
