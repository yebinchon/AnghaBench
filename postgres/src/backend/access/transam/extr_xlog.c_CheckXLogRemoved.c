
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ XLogSegNo ;
typedef int TimeLineID ;
struct TYPE_2__ {scalar_t__ lastRemovedSegNo; int info_lck; } ;


 int ERROR ;
 int MAXFNAMELEN ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* XLogCtl ;
 int XLogFileName (char*,int ,scalar_t__,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 int errno ;
 int wal_segment_size ;

void
CheckXLogRemoved(XLogSegNo segno, TimeLineID tli)
{
 int save_errno = errno;
 XLogSegNo lastRemovedSegNo;

 SpinLockAcquire(&XLogCtl->info_lck);
 lastRemovedSegNo = XLogCtl->lastRemovedSegNo;
 SpinLockRelease(&XLogCtl->info_lck);

 if (segno <= lastRemovedSegNo)
 {
  char filename[MAXFNAMELEN];

  XLogFileName(filename, tli, segno, wal_segment_size);
  errno = save_errno;
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("requested WAL segment %s has already been removed",
      filename)));
 }
 errno = save_errno;
}
