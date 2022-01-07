
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 char* _ (char*) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char const*,char*) ;
 scalar_t__ mkdir (char const*,int) ;
 char* progname ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void
make_directory(const char *dir)
{
 if (mkdir(dir, S_IRWXU | S_IRWXG | S_IRWXO) < 0)
 {
  fprintf(stderr, _("%s: could not create directory \"%s\": %s\n"),
    progname, dir, strerror(errno));
  exit(2);
 }
}
