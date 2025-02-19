
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int MAXPGPATH ;
 int RecoveryInProgress () ;
 int StatusFilePath (char*,char const*,char*) ;
 int XLogArchiveNotify (char const*) ;
 scalar_t__ XLogArchivingActive () ;
 scalar_t__ XLogArchivingAlways () ;
 scalar_t__ stat (char*,struct stat*) ;

bool
XLogArchiveCheckDone(const char *xlog)
{
 char archiveStatusPath[MAXPGPATH];
 struct stat stat_buf;
 bool inRecovery = RecoveryInProgress();







 if (!((XLogArchivingActive() && !inRecovery) ||
    (XLogArchivingAlways() && inRecovery)))
  return 1;


 StatusFilePath(archiveStatusPath, xlog, ".done");
 if (stat(archiveStatusPath, &stat_buf) == 0)
  return 1;


 StatusFilePath(archiveStatusPath, xlog, ".ready");
 if (stat(archiveStatusPath, &stat_buf) == 0)
  return 0;


 StatusFilePath(archiveStatusPath, xlog, ".done");
 if (stat(archiveStatusPath, &stat_buf) == 0)
  return 1;


 XLogArchiveNotify(xlog);
 return 0;
}
