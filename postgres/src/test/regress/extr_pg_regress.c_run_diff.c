
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 char* _ (char*) ;
 int exit (int) ;
 scalar_t__ file_size (char const*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int system (char const*) ;

__attribute__((used)) static int
run_diff(const char *cmd, const char *filename)
{
 int r;

 r = system(cmd);
 if (!WIFEXITED(r) || WEXITSTATUS(r) > 1)
 {
  fprintf(stderr, _("diff command failed with status %d: %s\n"), r, cmd);
  exit(2);
 }
 return WEXITSTATUS(r);
}
