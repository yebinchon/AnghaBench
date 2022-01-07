
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 int ERROR ;
 scalar_t__ MakePGDirectory (char const*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;

void
PathNameCreateTemporaryDir(const char *basedir, const char *directory)
{
 if (MakePGDirectory(directory) < 0)
 {
  if (errno == EEXIST)
   return;






  if (MakePGDirectory(basedir) < 0 && errno != EEXIST)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("cannot create temporary directory \"%s\": %m",
       basedir)));


  if (MakePGDirectory(directory) < 0 && errno != EEXIST)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("cannot create temporary subdirectory \"%s\": %m",
       directory)));
 }
}
