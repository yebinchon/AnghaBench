
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** delete_list ;
 scalar_t__ delete_on_die ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int perror (char const*) ;
 int stderr ;
 int unlink (char const*) ;

__attribute__((used)) static void die (const char *what)
{
  if (errno == 0) {
    fprintf(stderr, "%s: fatal error\n", what);
  } else {
    perror (what);
  }
  if (delete_on_die) {
    const char **p = delete_list;
    while (*p) {
      unlink(*p);
      p++;
    }
  }
  exit (1);
}
