
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimeLineID ;
typedef int FILE ;


 int * AllocateFile (char*,char*) ;
 scalar_t__ ArchiveRecoveryRequested ;
 scalar_t__ ENOENT ;
 int FATAL ;
 int FreeFile (int *) ;
 int MAXFNAMELEN ;
 int MAXPGPATH ;
 int RestoreArchivedFile (char*,char*,char*,int ,int) ;
 int TLHistoryFileName (char*,int) ;
 int TLHistoryFilePath (char*,int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;

bool
existsTimeLineHistory(TimeLineID probeTLI)
{
 char path[MAXPGPATH];
 char histfname[MAXFNAMELEN];
 FILE *fd;


 if (probeTLI == 1)
  return 0;

 if (ArchiveRecoveryRequested)
 {
  TLHistoryFileName(histfname, probeTLI);
  RestoreArchivedFile(path, histfname, "RECOVERYHISTORY", 0, 0);
 }
 else
  TLHistoryFilePath(path, probeTLI);

 fd = AllocateFile(path, "r");
 if (fd != ((void*)0))
 {
  FreeFile(fd);
  return 1;
 }
 else
 {
  if (errno != ENOENT)
   ereport(FATAL,
     (errcode_for_file_access(),
      errmsg("could not open file \"%s\": %m", path)));
  return 0;
 }
}
