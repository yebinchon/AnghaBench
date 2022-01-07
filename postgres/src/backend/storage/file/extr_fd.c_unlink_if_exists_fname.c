
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int PathNameDeleteTemporaryFile (char const*,int) ;
 int ereport (int,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;
 scalar_t__ rmdir (char const*) ;

__attribute__((used)) static void
unlink_if_exists_fname(const char *fname, bool isdir, int elevel)
{
 if (isdir)
 {
  if (rmdir(fname) != 0 && errno != ENOENT)
   ereport(elevel,
     (errcode_for_file_access(),
      errmsg("could not remove directory \"%s\": %m", fname)));
 }
 else
 {

  PathNameDeleteTemporaryFile(fname, 0);
 }
}
