
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ XLogSegNo ;
struct TYPE_2__ {scalar_t__ lastRemovedSegNo; int info_lck; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* XLogCtl ;
 int XLogFromFileName (char*,int *,scalar_t__*,int ) ;
 int wal_segment_size ;

__attribute__((used)) static void
UpdateLastRemovedPtr(char *filename)
{
 uint32 tli;
 XLogSegNo segno;

 XLogFromFileName(filename, &tli, &segno, wal_segment_size);

 SpinLockAcquire(&XLogCtl->info_lck);
 if (segno > XLogCtl->lastRemovedSegNo)
  XLogCtl->lastRemovedSegNo = segno;
 SpinLockRelease(&XLogCtl->info_lck);
}
