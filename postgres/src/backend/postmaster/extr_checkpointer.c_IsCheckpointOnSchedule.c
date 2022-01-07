
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_usec; scalar_t__ tv_sec; } ;
typedef scalar_t__ pg_time_t ;
typedef scalar_t__ XLogRecPtr ;


 int Assert (int ) ;
 double CheckPointCompletionTarget ;
 double CheckPointSegments ;
 double CheckPointTimeout ;
 scalar_t__ GetInsertRecPtr () ;
 scalar_t__ GetXLogReplayRecPtr (int *) ;
 scalar_t__ RecoveryInProgress () ;
 int ckpt_active ;
 double ckpt_cached_elapsed ;
 scalar_t__ ckpt_start_recptr ;
 scalar_t__ ckpt_start_time ;
 int gettimeofday (struct timeval*,int *) ;
 double wal_segment_size ;

__attribute__((used)) static bool
IsCheckpointOnSchedule(double progress)
{
 XLogRecPtr recptr;
 struct timeval now;
 double elapsed_xlogs,
    elapsed_time;

 Assert(ckpt_active);


 progress *= CheckPointCompletionTarget;







 if (progress < ckpt_cached_elapsed)
  return 0;
 if (RecoveryInProgress())
  recptr = GetXLogReplayRecPtr(((void*)0));
 else
  recptr = GetInsertRecPtr();
 elapsed_xlogs = (((double) (recptr - ckpt_start_recptr)) /
      wal_segment_size) / CheckPointSegments;

 if (progress < elapsed_xlogs)
 {
  ckpt_cached_elapsed = elapsed_xlogs;
  return 0;
 }




 gettimeofday(&now, ((void*)0));
 elapsed_time = ((double) ((pg_time_t) now.tv_sec - ckpt_start_time) +
     now.tv_usec / 1000000.0) / CheckPointTimeout;

 if (progress < elapsed_time)
 {
  ckpt_cached_elapsed = elapsed_time;
  return 0;
 }


 return 1;
}
