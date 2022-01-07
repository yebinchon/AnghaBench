
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimeLineID ;


 int KeepFileRestoredFromArchive (char*,char*) ;
 int MAXFNAMELEN ;
 int MAXPGPATH ;
 scalar_t__ RestoreArchivedFile (char*,char*,char*,int ,int) ;
 int TLHistoryFileName (char*,int) ;

void
restoreTimeLineHistoryFiles(TimeLineID begin, TimeLineID end)
{
 char path[MAXPGPATH];
 char histfname[MAXFNAMELEN];
 TimeLineID tli;

 for (tli = begin; tli < end; tli++)
 {
  if (tli == 1)
   continue;

  TLHistoryFileName(histfname, tli);
  if (RestoreArchivedFile(path, histfname, "RECOVERYHISTORY", 0, 0))
   KeepFileRestoredFromArchive(path, histfname);
 }
}
