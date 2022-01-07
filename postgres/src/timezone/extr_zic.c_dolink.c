
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ENOENT ;
 int ENOTSUP ;
 int EOF ;
 int EPERM ;
 int EXIT_FAILURE ;
 char* _ (char*) ;
 int close_file (int *,char*,char const*) ;
 char* directory ;
 int errno ;
 int exit (int ) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*,char*,char const*,char const*) ;
 int free (char*) ;
 int getc (int *) ;
 int hardlinkerr (char const*,char const*) ;
 scalar_t__ itsdir (char const*) ;
 int itssymlink (char const*) ;
 int mkdirs (char const*,int) ;
 char* progname ;
 int putc (int,int *) ;
 char* relname (char const*,char const*) ;
 scalar_t__ remove (char const*) ;
 int stderr ;
 char* strerror (int) ;
 scalar_t__ symlink (char const*,char const*) ;
 int warning (char*,char*) ;

__attribute__((used)) static void
dolink(char const *fromfield, char const *tofield, bool staysymlink)
{
 bool todirs_made = 0;
 int link_errno;





 if (itsdir(fromfield))
 {
  fprintf(stderr, _("%s: link from %s/%s failed: %s\n"),
    progname, directory, fromfield, strerror(EPERM));
  exit(EXIT_FAILURE);
 }
 if (staysymlink)
  staysymlink = itssymlink(tofield);
 if (remove(tofield) == 0)
  todirs_made = 1;
 else if (errno != ENOENT)
 {
  char const *e = strerror(errno);

  fprintf(stderr, _("%s: Can't remove %s/%s: %s\n"),
    progname, directory, tofield, e);
  exit(EXIT_FAILURE);
 }
 link_errno = staysymlink ? ENOTSUP : hardlinkerr(fromfield, tofield);
 if (link_errno == ENOENT && !todirs_made)
 {
  mkdirs(tofield, 1);
  todirs_made = 1;
  link_errno = hardlinkerr(fromfield, tofield);
 }
 if (link_errno != 0)
 {
  {
   FILE *fp,
        *tp;
   int c;

   fp = fopen(fromfield, "rb");
   if (!fp)
   {
    char const *e = strerror(errno);

    fprintf(stderr, _("%s: Can't read %s/%s: %s\n"),
      progname, directory, fromfield, e);
    exit(EXIT_FAILURE);
   }
   tp = fopen(tofield, "wb");
   if (!tp)
   {
    char const *e = strerror(errno);

    fprintf(stderr, _("%s: Can't create %s/%s: %s\n"),
      progname, directory, tofield, e);
    exit(EXIT_FAILURE);
   }
   while ((c = getc(fp)) != EOF)
    putc(c, tp);
   close_file(fp, directory, fromfield);
   close_file(tp, directory, tofield);
   if (link_errno != ENOTSUP)
    warning(_("copy used because hard link failed: %s"),
      strerror(link_errno));





  }
 }
}
