
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct audio_data {scalar_t__ timestamp; int frames; } ;
struct TYPE_12__ {scalar_t__ timing_adjust; int timing_set; scalar_t__ next_audio_ts_min; scalar_t__ last_audio_ts; scalar_t__ next_audio_sys_ts_min; scalar_t__ sync_offset; scalar_t__ resample_offset; scalar_t__ last_sync_offset; scalar_t__ monitoring_type; int audio_buf_mutex; scalar_t__ audio_ts; scalar_t__ async_decoupled; scalar_t__ async_unbuffered; } ;
typedef TYPE_2__ obs_source_t ;
typedef scalar_t__ int64_t ;
struct TYPE_11__ {int audio; } ;
struct TYPE_13__ {TYPE_1__ audio; } ;


 scalar_t__ MAX_TS_VAR ;
 scalar_t__ OBS_MONITORING_TYPE_MONITOR_ONLY ;
 scalar_t__ TS_SMOOTHING_THRESHOLD ;
 size_t audio_output_get_sample_rate (int ) ;
 scalar_t__ conv_frames_to_time (size_t,int ) ;
 int handle_ts_jump (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_9__* obs ;
 scalar_t__ os_gettime_ns () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int reset_audio_timing (TYPE_2__*,scalar_t__,scalar_t__) ;
 int source_muted (TYPE_2__*,scalar_t__) ;
 int source_output_audio_place (TYPE_2__*,struct audio_data*) ;
 int source_output_audio_push_back (TYPE_2__*,struct audio_data*) ;
 int source_signal_audio_data (TYPE_2__*,struct audio_data const*,int ) ;
 scalar_t__ uint64_diff (scalar_t__,scalar_t__) ;

__attribute__((used)) static void source_output_audio_data(obs_source_t *source,
         const struct audio_data *data)
{
 size_t sample_rate = audio_output_get_sample_rate(obs->audio.audio);
 struct audio_data in = *data;
 uint64_t diff;
 uint64_t os_time = os_gettime_ns();
 int64_t sync_offset;
 bool using_direct_ts = 0;
 bool push_back = 0;



 if (uint64_diff(in.timestamp, os_time) < MAX_TS_VAR) {
  source->timing_adjust = 0;
  source->timing_set = 1;
  using_direct_ts = 1;
 }

 if (!source->timing_set) {
  reset_audio_timing(source, in.timestamp, os_time);

 } else if (source->next_audio_ts_min != 0) {
  diff = uint64_diff(source->next_audio_ts_min, in.timestamp);


  if (diff > MAX_TS_VAR && !using_direct_ts)
   handle_ts_jump(source, source->next_audio_ts_min,
           in.timestamp, diff, os_time);
  else if (diff < TS_SMOOTHING_THRESHOLD) {
   if (source->async_unbuffered && source->async_decoupled)
    source->timing_adjust = os_time - in.timestamp;
   in.timestamp = source->next_audio_ts_min;
  }
 }

 source->last_audio_ts = in.timestamp;
 source->next_audio_ts_min =
  in.timestamp + conv_frames_to_time(sample_rate, in.frames);

 in.timestamp += source->timing_adjust;

 pthread_mutex_lock(&source->audio_buf_mutex);

 if (source->next_audio_sys_ts_min == in.timestamp) {
  push_back = 1;

 } else if (source->next_audio_sys_ts_min) {
  diff = uint64_diff(source->next_audio_sys_ts_min, in.timestamp);

  if (diff < TS_SMOOTHING_THRESHOLD) {
   push_back = 1;







  } else if (diff > MAX_TS_VAR) {
   reset_audio_timing(source, data->timestamp, os_time);
   in.timestamp = data->timestamp + source->timing_adjust;
  }
 }

 sync_offset = source->sync_offset;
 in.timestamp += sync_offset;
 in.timestamp -= source->resample_offset;

 source->next_audio_sys_ts_min =
  source->next_audio_ts_min + source->timing_adjust;

 if (source->last_sync_offset != sync_offset) {
  if (source->last_sync_offset)
   push_back = 0;
  source->last_sync_offset = sync_offset;
 }

 if (source->monitoring_type != OBS_MONITORING_TYPE_MONITOR_ONLY) {
  if (push_back && source->audio_ts)
   source_output_audio_push_back(source, &in);
  else
   source_output_audio_place(source, &in);
 }

 pthread_mutex_unlock(&source->audio_buf_mutex);

 source_signal_audio_data(source, data, source_muted(source, os_time));
}
