
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ last_xlog_end; int mutex; } ;
typedef TYPE_1__ FixedParallelState ;


 int Assert (int ) ;
 TYPE_1__* MyFixedParallelState ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

void
ParallelWorkerReportLastRecEnd(XLogRecPtr last_xlog_end)
{
 FixedParallelState *fps = MyFixedParallelState;

 Assert(fps != ((void*)0));
 SpinLockAcquire(&fps->mutex);
 if (fps->last_xlog_end < last_xlog_end)
  fps->last_xlog_end = last_xlog_end;
 SpinLockRelease(&fps->mutex);
}
