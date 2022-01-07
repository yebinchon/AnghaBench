
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef scalar_t__ int32 ;
typedef int WritebackContext ;
struct TYPE_2__ {scalar_t__ m_buf_alloc; int m_buf_written_clean; int m_maxwritten_clean; } ;


 int Assert (int) ;
 int BUF_REUSABLE ;
 int BUF_WRITTEN ;
 float BgWriterDelay ;
 TYPE_1__ BgWriterStats ;
 int CurrentResourceOwner ;
 int DEBUG1 ;
 int DEBUG2 ;
 long NBuffers ;
 int ResourceOwnerEnlargeBuffers (int ) ;
 int StrategySyncStart (scalar_t__*,scalar_t__*) ;
 int SyncOneBuffer (int,int,int *) ;
 int bgwriter_lru_maxpages ;
 float bgwriter_lru_multiplier ;
 int elog (int ,char*,scalar_t__,long,...) ;

bool
BgBufferSync(WritebackContext *wb_context)
{

 int strategy_buf_id;
 uint32 strategy_passes;
 uint32 recent_alloc;





 static bool saved_info_valid = 0;
 static int prev_strategy_buf_id;
 static uint32 prev_strategy_passes;
 static int next_to_clean;
 static uint32 next_passes;


 static float smoothed_alloc = 0;
 static float smoothed_density = 10.0;


 float smoothing_samples = 16;
 float scan_whole_pool_milliseconds = 120000.0;


 long strategy_delta;
 int bufs_to_lap;
 int bufs_ahead;
 float scans_per_alloc;
 int reusable_buffers_est;
 int upcoming_alloc_est;
 int min_scan_buffers;


 int num_to_scan;
 int num_written;
 int reusable_buffers;


 long new_strategy_delta;
 uint32 new_recent_alloc;





 strategy_buf_id = StrategySyncStart(&strategy_passes, &recent_alloc);


 BgWriterStats.m_buf_alloc += recent_alloc;






 if (bgwriter_lru_maxpages <= 0)
 {
  saved_info_valid = 0;
  return 1;
 }
 if (saved_info_valid)
 {
  int32 passes_delta = strategy_passes - prev_strategy_passes;

  strategy_delta = strategy_buf_id - prev_strategy_buf_id;
  strategy_delta += (long) passes_delta * NBuffers;

  Assert(strategy_delta >= 0);

  if ((int32) (next_passes - strategy_passes) > 0)
  {

   bufs_to_lap = strategy_buf_id - next_to_clean;






  }
  else if (next_passes == strategy_passes &&
     next_to_clean >= strategy_buf_id)
  {

   bufs_to_lap = NBuffers - (next_to_clean - strategy_buf_id);






  }
  else
  {
   next_to_clean = strategy_buf_id;
   next_passes = strategy_passes;
   bufs_to_lap = NBuffers;
  }
 }
 else
 {
  strategy_delta = 0;
  next_to_clean = strategy_buf_id;
  next_passes = strategy_passes;
  bufs_to_lap = NBuffers;
 }


 prev_strategy_buf_id = strategy_buf_id;
 prev_strategy_passes = strategy_passes;
 saved_info_valid = 1;







 if (strategy_delta > 0 && recent_alloc > 0)
 {
  scans_per_alloc = (float) strategy_delta / (float) recent_alloc;
  smoothed_density += (scans_per_alloc - smoothed_density) /
   smoothing_samples;
 }






 bufs_ahead = NBuffers - bufs_to_lap;
 reusable_buffers_est = (float) bufs_ahead / smoothed_density;






 if (smoothed_alloc <= (float) recent_alloc)
  smoothed_alloc = recent_alloc;
 else
  smoothed_alloc += ((float) recent_alloc - smoothed_alloc) /
   smoothing_samples;


 upcoming_alloc_est = (int) (smoothed_alloc * bgwriter_lru_multiplier);
 if (upcoming_alloc_est == 0)
  smoothed_alloc = 0;
 min_scan_buffers = (int) (NBuffers / (scan_whole_pool_milliseconds / BgWriterDelay));

 if (upcoming_alloc_est < (min_scan_buffers + reusable_buffers_est))
 {




  upcoming_alloc_est = min_scan_buffers + reusable_buffers_est;
 }
 ResourceOwnerEnlargeBuffers(CurrentResourceOwner);

 num_to_scan = bufs_to_lap;
 num_written = 0;
 reusable_buffers = reusable_buffers_est;


 while (num_to_scan > 0 && reusable_buffers < upcoming_alloc_est)
 {
  int sync_state = SyncOneBuffer(next_to_clean, 1,
              wb_context);

  if (++next_to_clean >= NBuffers)
  {
   next_to_clean = 0;
   next_passes++;
  }
  num_to_scan--;

  if (sync_state & BUF_WRITTEN)
  {
   reusable_buffers++;
   if (++num_written >= bgwriter_lru_maxpages)
   {
    BgWriterStats.m_maxwritten_clean++;
    break;
   }
  }
  else if (sync_state & BUF_REUSABLE)
   reusable_buffers++;
 }

 BgWriterStats.m_buf_written_clean += num_written;
 new_strategy_delta = bufs_to_lap - num_to_scan;
 new_recent_alloc = reusable_buffers - reusable_buffers_est;
 if (new_strategy_delta > 0 && new_recent_alloc > 0)
 {
  scans_per_alloc = (float) new_strategy_delta / (float) new_recent_alloc;
  smoothed_density += (scans_per_alloc - smoothed_density) /
   smoothing_samples;






 }


 return (bufs_to_lap == 0 && recent_alloc == 0);
}
