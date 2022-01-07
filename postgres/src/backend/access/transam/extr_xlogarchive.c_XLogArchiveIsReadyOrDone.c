
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int MAXPGPATH ;
 int StatusFilePath (char*,char const*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

bool
XLogArchiveIsReadyOrDone(const char *xlog)
{
 char archiveStatusPath[MAXPGPATH];
 struct stat stat_buf;


 StatusFilePath(archiveStatusPath, xlog, ".done");
 if (stat(archiveStatusPath, &stat_buf) == 0)
  return 1;


 StatusFilePath(archiveStatusPath, xlog, ".ready");
 if (stat(archiveStatusPath, &stat_buf) == 0)
  return 1;


 StatusFilePath(archiveStatusPath, xlog, ".done");
 if (stat(archiveStatusPath, &stat_buf) == 0)
  return 1;

 return 0;
}
