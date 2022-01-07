
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int ENOENT ;
 int ERROR ;
 int LOG ;
 int ReportTemporaryFileUsage (char const*,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 int errno ;
 scalar_t__ stat (char const*,struct stat*) ;
 scalar_t__ unlink (char const*) ;

bool
PathNameDeleteTemporaryFile(const char *path, bool error_on_failure)
{
 struct stat filestats;
 int stat_errno;


 if (stat(path, &filestats) != 0)
  stat_errno = errno;
 else
  stat_errno = 0;






 if (stat_errno == ENOENT)
  return 0;

 if (unlink(path) < 0)
 {
  if (errno != ENOENT)
   ereport(error_on_failure ? ERROR : LOG,
     (errcode_for_file_access(),
      errmsg("could not unlink temporary file \"%s\": %m",
       path)));
  return 0;
 }

 if (stat_errno == 0)
  ReportTemporaryFileUsage(path, filestats.st_size);
 else
 {
  errno = stat_errno;
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not stat file \"%s\": %m", path)));
 }

 return 1;
}
