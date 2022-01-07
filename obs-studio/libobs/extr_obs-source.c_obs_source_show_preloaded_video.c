
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int async_active; scalar_t__ monitoring_type; int audio_buf_mutex; int last_frame_ts; } ;
typedef TYPE_1__ obs_source_t ;


 scalar_t__ OBS_MONITORING_TYPE_MONITOR_ONLY ;
 int obs_source_valid (TYPE_1__*,char*) ;
 int os_gettime_ns () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int reset_audio_data (TYPE_1__*,int ) ;
 int reset_audio_timing (TYPE_1__*,int ,int ) ;

void obs_source_show_preloaded_video(obs_source_t *source)
{
 uint64_t sys_ts;

 if (!obs_source_valid(source, "obs_source_show_preloaded_video"))
  return;

 source->async_active = 1;

 pthread_mutex_lock(&source->audio_buf_mutex);
 sys_ts = (source->monitoring_type != OBS_MONITORING_TYPE_MONITOR_ONLY)
    ? os_gettime_ns()
    : 0;
 reset_audio_timing(source, source->last_frame_ts, sys_ts);
 reset_audio_data(source, sys_ts);
 pthread_mutex_unlock(&source->audio_buf_mutex);
}
