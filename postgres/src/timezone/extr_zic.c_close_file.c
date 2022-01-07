
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EXIT_FAILURE ;
 char* _ (char*) ;
 int errno ;
 int exit (int ) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fprintf (int ,char*,char*,char const*,char*,char const*,char*,char const*) ;
 char* progname ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void
close_file(FILE *stream, char const *dir, char const *name)
{
 char const *e = (ferror(stream) ? _("I/O error")
      : fclose(stream) != 0 ? strerror(errno) : ((void*)0));

 if (e)
 {
  fprintf(stderr, "%s: %s%s%s%s%s\n", progname,
    dir ? dir : "", dir ? "/" : "",
    name ? name : "", name ? ": " : "",
    e);
  exit(EXIT_FAILURE);
 }
}
