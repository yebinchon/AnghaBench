
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_name; } ;
typedef int XLogSegNo ;
typedef int XLogRecPtr ;
typedef int TimeLineID ;
typedef int DIR ;


 int * AllocateDir (int ) ;
 int DEBUG2 ;
 int FreeDir (int *) ;
 int InvalidXLogRecPtr ;
 int IsXLogFileName (scalar_t__) ;
 int MAXFNAMELEN ;
 struct dirent* ReadDir (int *,int ) ;
 int RemoveXlogFile (scalar_t__,int ,int ) ;
 int XLByteToPrevSeg (int ,int ,int ) ;
 int XLOGDIR ;
 int XLogArchiveIsReady (scalar_t__) ;
 int XLogFileName (char*,int ,int ,int ) ;
 int elog (int ,char*,char*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;
 int wal_segment_size ;

__attribute__((used)) static void
RemoveNonParentXlogFiles(XLogRecPtr switchpoint, TimeLineID newTLI)
{
 DIR *xldir;
 struct dirent *xlde;
 char switchseg[MAXFNAMELEN];
 XLogSegNo endLogSegNo;

 XLByteToPrevSeg(switchpoint, endLogSegNo, wal_segment_size);




 XLogFileName(switchseg, newTLI, endLogSegNo, wal_segment_size);

 elog(DEBUG2, "attempting to remove WAL segments newer than log file %s",
   switchseg);

 xldir = AllocateDir(XLOGDIR);

 while ((xlde = ReadDir(xldir, XLOGDIR)) != ((void*)0))
 {

  if (!IsXLogFileName(xlde->d_name))
   continue;






  if (strncmp(xlde->d_name, switchseg, 8) < 0 &&
   strcmp(xlde->d_name + 8, switchseg + 8) > 0)
  {






   if (!XLogArchiveIsReady(xlde->d_name))
    RemoveXlogFile(xlde->d_name, InvalidXLogRecPtr, switchpoint);
  }
 }

 FreeDir(xldir);
}
