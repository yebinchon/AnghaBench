
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef scalar_t__ XLogSegNo ;


 int ControlFileLock ;
 int DEBUG1 ;
 int LOG ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MAXPGPATH ;
 int ThisTimeLineID ;
 int XLogFilePath (char*,int ,scalar_t__,int ) ;
 scalar_t__ durable_link_or_rename (char*,char*,int ) ;
 int durable_unlink (char*,int ) ;
 scalar_t__ stat (char*,struct stat*) ;
 int wal_segment_size ;

__attribute__((used)) static bool
InstallXLogFileSegment(XLogSegNo *segno, char *tmppath,
        bool find_free, XLogSegNo max_segno,
        bool use_lock)
{
 char path[MAXPGPATH];
 struct stat stat_buf;

 XLogFilePath(path, ThisTimeLineID, *segno, wal_segment_size);




 if (use_lock)
  LWLockAcquire(ControlFileLock, LW_EXCLUSIVE);

 if (!find_free)
 {

  durable_unlink(path, DEBUG1);
 }
 else
 {

  while (stat(path, &stat_buf) == 0)
  {
   if ((*segno) >= max_segno)
   {

    if (use_lock)
     LWLockRelease(ControlFileLock);
    return 0;
   }
   (*segno)++;
   XLogFilePath(path, ThisTimeLineID, *segno, wal_segment_size);
  }
 }





 if (durable_link_or_rename(tmppath, path, LOG) != 0)
 {
  if (use_lock)
   LWLockRelease(ControlFileLock);

  return 0;
 }

 if (use_lock)
  LWLockRelease(ControlFileLock);

 return 1;
}
