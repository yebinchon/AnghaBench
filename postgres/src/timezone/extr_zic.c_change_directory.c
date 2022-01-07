
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int EXIT_FAILURE ;
 char* _ (char*) ;
 scalar_t__ chdir (char const*) ;
 int errno ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char const*,char*) ;
 int mkdirs (char const*,int) ;
 char* progname ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static void
change_directory(char const *dir)
{
 if (chdir(dir) != 0)
 {
  int chdir_errno = errno;

  if (chdir_errno == ENOENT)
  {
   mkdirs(dir, 0);
   chdir_errno = chdir(dir) == 0 ? 0 : errno;
  }
  if (chdir_errno != 0)
  {
   fprintf(stderr, _("%s: Can't chdir to %s: %s\n"),
     progname, dir, strerror(chdir_errno));
   exit(EXIT_FAILURE);
  }
 }
}
