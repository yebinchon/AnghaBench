
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 scalar_t__ geteuid () ;
 scalar_t__ getuid () ;
 scalar_t__ pgwin32_is_admin () ;
 int write_stderr (char*,...) ;

__attribute__((used)) static void
check_root(const char *progname)
{

 if (geteuid() == 0)
 {
  write_stderr("\"root\" execution of the PostgreSQL server is not permitted.\n"
      "The server must be started under an unprivileged user ID to prevent\n"
      "possible system security compromise.  See the documentation for\n"
      "more information on how to properly start the server.\n");
  exit(1);
 }
 if (getuid() != geteuid())
 {
  write_stderr("%s: real and effective user IDs must match\n",
      progname);
  exit(1);
 }
}
