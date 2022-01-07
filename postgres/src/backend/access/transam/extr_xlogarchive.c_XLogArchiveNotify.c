
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * AllocateFile (char*,char*) ;
 scalar_t__ FreeFile (int *) ;
 scalar_t__ IsUnderPostmaster ;
 int LOG ;
 int MAXPGPATH ;
 int PMSIGNAL_WAKEN_ARCHIVER ;
 int SendPostmasterSignal (int ) ;
 int StatusFilePath (char*,char const*,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;

void
XLogArchiveNotify(const char *xlog)
{
 char archiveStatusPath[MAXPGPATH];
 FILE *fd;


 StatusFilePath(archiveStatusPath, xlog, ".ready");
 fd = AllocateFile(archiveStatusPath, "w");
 if (fd == ((void*)0))
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not create archive status file \"%s\": %m",
      archiveStatusPath)));
  return;
 }
 if (FreeFile(fd))
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not write archive status file \"%s\": %m",
      archiveStatusPath)));
  return;
 }


 if (IsUnderPostmaster)
  SendPostmasterSignal(PMSIGNAL_WAKEN_ARCHIVER);
}
