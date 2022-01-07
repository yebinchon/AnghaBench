
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_name; } ;
typedef int XLogSegNo ;
typedef int XLogRecPtr ;
typedef int DIR ;


 int * AllocateDir (int ) ;
 int DEBUG2 ;
 int FreeDir (int *) ;
 int IsPartialXLogFileName (scalar_t__) ;
 int IsXLogFileName (scalar_t__) ;
 int MAXFNAMELEN ;
 struct dirent* ReadDir (int *,int ) ;
 int RemoveXlogFile (scalar_t__,int ,int ) ;
 int UpdateLastRemovedPtr (scalar_t__) ;
 int XLOGDIR ;
 scalar_t__ XLogArchiveCheckDone (scalar_t__) ;
 int XLogFileName (char*,int ,int ,int ) ;
 int elog (int ,char*,char*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 int wal_segment_size ;

__attribute__((used)) static void
RemoveOldXlogFiles(XLogSegNo segno, XLogRecPtr RedoRecPtr, XLogRecPtr endptr)
{
 DIR *xldir;
 struct dirent *xlde;
 char lastoff[MAXFNAMELEN];






 XLogFileName(lastoff, 0, segno, wal_segment_size);

 elog(DEBUG2, "attempting to remove WAL segments older than log file %s",
   lastoff);

 xldir = AllocateDir(XLOGDIR);

 while ((xlde = ReadDir(xldir, XLOGDIR)) != ((void*)0))
 {

  if (!IsXLogFileName(xlde->d_name) &&
   !IsPartialXLogFileName(xlde->d_name))
   continue;
  if (strcmp(xlde->d_name + 8, lastoff + 8) <= 0)
  {
   if (XLogArchiveCheckDone(xlde->d_name))
   {

    UpdateLastRemovedPtr(xlde->d_name);

    RemoveXlogFile(xlde->d_name, RedoRecPtr, endptr);
   }
  }
 }

 FreeDir(xldir);
}
